module M2yAocubo
  class Login < Base


    def self.signin(username, password)
      token = getToken.parsed_response["token"]
      body = {username: username, password: password, signin_token: token}
      url = "#{baseUrl}/#{SIGNIN}"
      postUrl(url, body)
    end
    
  end
end
