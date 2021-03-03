module M2yAocubo
  module DataLake

  class Recharge < M2yAocubo::DataLakeBase

    def self.phoneRecharge(idOriginAccount, dealer, phone, amount, user)

      event_body = {"#{EVENT_CD_SSO_EVENT_KEY}": EVENT_CD_RECARGA_CELULAR,
                    "#{EVENT_CD_CONSULTA_CONTA_KEY}": idOriginAccount,
                    "#{EVENT_CD_RECARGA_CELULAR_OPERADORA_KEY}": dealer,
                    "#{EVENT_CD_RECARGA_CELULAR_NUMERO_KEY}": phone,
                    "#{EVENT_CD_TRANSFERENCIA_VALOR_KEY}": amount
                    }

      sendData(EVENT_CD_RECARGA_CELULAR,
               event_body,
               user)

    end


    def self.transportRecharge(idOriginAccount, card, amount, user)

      event_body = {"#{EVENT_CD_SSO_EVENT_KEY}": EVENT_CD_RECARGA_BILHETE_UNICO,
                    "#{EVENT_CD_CONSULTA_CONTA_KEY}": idOriginAccount,
                    "#{EVENT_CD_RECARGA_BILHETE_UNICO_BILHETE_KEY}": card,
                    "#{EVENT_CD_TRANSFERENCIA_VALOR_KEY}": amount
                    }

      sendData(EVENT_CD_RECARGA_BILHETE_UNICO_BILHETE_KEY,
               event_body,
               user)

    end
end
  end
end
