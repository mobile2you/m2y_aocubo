module M2yAocubo
  module DataLake

  class Sso < M2yAocubo::DataLakeBase

    def self.updatePass(user)
      event_body = {"#{EVENT_CD_SSO_EVENT_KEY}": EVENT_CD_SSO_PASSWORD_VALUE}
      sendData(EVENT_CD_SSO,
               event_body,
               user)
    end

    def self.resetPass(user)
      event_body = {"#{EVENT_CD_SSO_EVENT_KEY}": EVENT_CD_SSO_EVENT_VALUE}
      sendData(EVENT_CD_SSO,
               event_body,
               user)
    end
end
  end
end
