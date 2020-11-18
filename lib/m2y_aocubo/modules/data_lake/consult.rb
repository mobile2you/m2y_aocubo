module M2yAocuboDataLake

  class Consult < M2yAocubo::DataLake

    def self.updatePass(user)
      event_body = {"#{EVENT_CD_SSO_EVENT_KEY}": EVENT_CD_SSO_PASSWORD_VALUE}
      sendData(EVENT_CD_SSO,
               event_body,
               user)

    end

    def self.readFaq(user)
      event_body = {"#{EVENT_CD_SSO_EVENT_KEY}": EVENT_CD_CONSULTA_FAQ_KEY}

      sendData(EVENT_CD_CONSULTA,
               event_body,
               user)

    end

    def self.readExtract(account, user)
      event_body = {"#{EVENT_CD_SSO_EVENT_KEY}": EVENT_CD_CONSULTA_EXTRATO_EVENT_VALUE,
                    "#{EVENT_CD_CONSULTA_CONTA_KEY}": account}

      sendData(EVENT_CD_CONSULTA,
               event_body,
               user)

    end


    def self.readReceipts(account, user)
      event_body = {"#{EVENT_CD_SSO_EVENT_KEY}": EVENT_CD_CONSULTA_COMPROVANTES_EVENT_VALUE,
                    "#{EVENT_CD_CONSULTA_CONTA_KEY}": account}

      sendData(EVENT_CD_CONSULTA,
               event_body,
               user)


    end
  end
end
