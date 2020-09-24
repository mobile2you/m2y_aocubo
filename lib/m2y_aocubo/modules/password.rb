
module M2yAocubo
  class Password < Base

    def self.forgotPassword(username)
      body = {username: username}
      url = "#{baseUrl}/#{FORGOT_PASS}"
      postUrl(url, body)
    end

    def self.updatePassword(username, previousPassword, proposedPassword)
      body = {username: username, previousPassword: previousPassword, proposedPassword: proposedPassword}
      url = "#{baseUrl}/#{UPDATE_PASS}"
      postUrl(url, body, true)
    end

    def self.recoverPassword(username, password, confirmationCode)
      body = {username: username, password: password, confirmPassword: password,  confirmationCode: confirmationCode}
      url = "#{baseUrl}/#{CONFIRM_PASS}"
      postUrl(url, body)
    end

  end
end
