module M2yAocubo

  class Base

    def self.baseUrl
      M2yAocubo.configuration.ao3_sso_server_url
    end

    def self.getToken
      url = "#{baseUrl}/#{TOKEN}"
      getUrl(url, true)
    end


    def self.baseHeaders(crypt_id = nil, auth = false)
      headers = {'Content-Type' => "application/json"}
      headers["x-api-key"] = M2yAocubo.configuration.ao3_api_key
      headers["x-csrf-token"] = "ao#{Time.now.to_i}"
      if !crypt_id.nil?
        headers["x-crypto-context"] = crypt_id
      end
      if auth
        headers["Authorization"] = "Basic " + Base64.strict_encode64("#{M2yAocubo.configuration.ao3_client_id}:#{M2yAocubo.configuration.ao3_client_secret}")
      end
      headers
    end


    def self.postUrl(url, body, auth = false)
      crypt = cryptContext
      if crypt.client_public_key.nil?
        nil
      else
        HTTParty.post(url, headers: baseHeaders(crypt.id, auth), body: safeBody(body, crypt.client_public_key))
      end
    end

    def self.getUrl(url, auth = false)
      HTTParty.get(url, headers: baseHeaders(nil, auth))
    end


    def self.cryptContext
      url = "#{baseUrl}/#{CRYPT_CONTEXT}"
      req = HTTParty.get(url, headers: baseHeaders)
      OpenStruct.new(req.parsed_response)
    end

    def self.safeBody(body, public_key)
      body[:client_id] = M2yAocubo.configuration.ao3_client_id
      public_key  = OpenSSL::PKey::RSA.new(public_key)
      body.keys.each do |key|
        puts key
        puts SAFE_KEYS
        if SAFE_KEYS.include?(key)
          body[key] = crypt(body[key], public_key)
        end
      end
      body.to_json
    end

    def self.crypt(string, public_key)
      Base64.strict_encode64(public_key.public_encrypt(string))
    end

  end
end
