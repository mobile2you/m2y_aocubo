module M2yAocubo
  class Registration < Base

    def self.signup(body)
      url = "#{baseUrl}/#{SIGNUP}"
      postUrl(url, body)
    end
    
  end
end
