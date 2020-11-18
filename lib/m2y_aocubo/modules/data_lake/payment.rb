module M2yAocuboDataLake

  class Payment < M2yAocubo::DataLake

    def self.sendPayment(idOriginAccount, barcode, amount, user)

      event_body = {"#{EVENT_CD_SSO_EVENT_KEY}": EVENT_CD_BOLETO_BILLET_EVENT_VALUE,
                    "#{EVENT_CD_CONSULTA_CONTA_KEY}": idOriginAccount,
                    "#{EVENT_CD_BOLETO_KEY}": barcode,
                    "#{EVENT_CD_TRANSFERENCIA_VALOR_KEY}": amount
                    }

      sendData(EVENT_CD_PAGAMENTO_CONTA,
               event_body,
               user)

    end


  end
end
