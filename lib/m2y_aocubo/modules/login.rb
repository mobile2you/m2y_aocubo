module M2yAocubo
  class Login < Base


    def self.signin(username, password)
      token = getToken.parsed_response["token"]
      body = {"username": username, "password": password, signin_token: token}
      url = "#{baseUrl}/#{SIGNIN}"
      postUrl(url, body)
    end

    def self.sso(code, callback)
      token = getToken.parsed_response["token"]
      body = {"grant_type": "authorization_code", "code": code, "redirect_uri": callback, "client_id": M2yAocubo.configuration.ao3_client_id}
      url = "#{baseUrl}/#{ACCESS_TOKEN}"
      postEncoded(url, body)
    end

  end
end
