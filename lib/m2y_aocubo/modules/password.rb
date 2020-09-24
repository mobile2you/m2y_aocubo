
module M2yAocubo
  class Password < Base

    def self.forgotPassword(username)
      body = {username: username}
      url = "#{baseUrl}/#{FORGOT_PASS}"
      postUrl(url, body)
    end

    def self.updatePassword(username, previousPassword, proposedPassword, token)
      body = {username: username, previousPassword: previousPassword, proposedPassword: proposedPassword, confirmPassword: proposedPassword}
      url = "#{baseUrl}/#{UPDATE_PASS}"
      postUrlWithBearerToken(url, body, token)
    end

    def self.recoverPassword(username, password, confirmationCode)
      body = {username: username, password: password, confirmPassword: password,  confirmationCode: confirmationCode}
      url = "#{baseUrl}/#{CONFIRM_PASS}"
      postUrl(url, body)
    end

    def self.postUrlWithBearerToken(url, body, token)
      crypt = cryptContext
      if crypt.client_public_key.nil?
        nil
      else
        headers = baseHeaders(crypt.id, false)
        headers["Authorization"] = "Bearer #{token}"
        HTTParty.post(url, headers: headers, body: safeBody(body, crypt.client_public_key))
      end
    end

  end
end
