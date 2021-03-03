module M2yAocubo
  class Registration < Base

    def self.signup(body)
      url = "#{baseUrl}/#{SIGNUP}"
      postUrl(url, body)
    end
    
    def self.verify_user(email)
      url = "#{baseUrl}/#{VERIFY_USER}"
      postUrl(url, {email: email})
    end

    def self.send_verify_code(email)
      url = "#{baseUrl}/#{SEND_VERIFICATION_TOKEN}"
      postUrl(url, {email: email, type_token: TOKEN_TYPE})
    end

    def self.verify_code(username, code)
      url = "#{baseUrl}/#{VERIFICATION_TOKEN}"
      postUrl(url, {username: username, VerificationCode: code})
    end

    def self.resend_code(username)
      url = "#{baseUrl}/#{RESEND_TOKEN}"
      postUrl(url, {username: username})
    end

  end
end
