module M2yAocubo

  class DataLake

    def self.baseUrl
      M2yAocubo.configuration.ao3_data_server_url
    end

    def self.basicHeaders
      headers = {'Content-Type' => "application/json"}
      headers["x-api-key"] = M2yAocubo.configuration.ao3_api_key
      headers["x-csrf-token"] = "ao#{Time.now.to_i}"
      headers
    end

    def self.sendData(params)
      url = "#{baseUrl}/#{DYNAMIC_INGEST}"
      req = HTTParty.post(url, headers: basicHeaders, body: params )
    end

  end
end
