module M2yAocubo
  module DataLake

  class Transfer < M2yAocubo::DataLakeBase

    def self.sendTed(idOriginAccount, bankId, agency, account, amount, user)

      event_body = {"#{EVENT_CD_SSO_EVENT_KEY}": EVENT_CD_TRANSFERENCIA_TED_EVENT_VALUE,
                    "#{EVENT_CD_CONSULTA_CONTA_KEY}": idOriginAccount,
                    "#{EVENT_CD_TRANSFERENCIA_BANCO_KEY}": bankId,
                    "#{EVENT_CD_TRANSFERENCIA_AGENCIA_KEY}": agency,
                    "#{EVENT_CD_TRANSFERENCIA_CONTA_BANCARIA_KEY}": account,
                    "#{EVENT_CD_TRANSFERENCIA_VALOR_KEY}": amount
                    }

      sendData(EVENT_CD_TRANSFERENCIA,
               event_body,
               user)

    end

    def self.sendP2p(idOriginAccount, destinationAccount, amount, user)

      event_body = {"#{EVENT_CD_SSO_EVENT_KEY}": EVENT_CD_TRANSFERENCIA_P2P_EVENT_VALUE,
                    "#{EVENT_CD_CONSULTA_CONTA_KEY}": idOriginAccount,
                    "#{EVENT_CD_TRANSFERENCIA_CONTA_KEY}": destinationAccount,
                    "#{EVENT_CD_TRANSFERENCIA_VALOR_KEY}": amount
                    }

      sendData(EVENT_CD_TRANSFERENCIA,
               event_body,
               user)

    end
end
  end
end
