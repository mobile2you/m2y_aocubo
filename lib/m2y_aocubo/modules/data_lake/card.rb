module M2yAocuboDataLake

  class Card < M2yAocubo::DataLake

    def self.sendCardEvent(card, event, user)
      event_body = {"#{EVENT_CD_SSO_EVENT_KEY}": event,
                    "#{EVENT_CD_CARTAO_CARD_KEY}": card}
      sendData(EVENT_CD_CARTAO,
               event_body,
               user)
    end

    def self.unlockCard(card, user)
      sendCardEvent(
        card,
        EVENT_CD_CARTAO_UNLOCK_EVENT_VALUE,
      user)
    end

    def self.lockCard(card, user)
      sendCardEvent(
        card,
        EVENT_CD_CARTAO_LOCK_EVENT_VALUE,
      user)
    end

    def self.passwordCard(card, user)
      sendCardEvent(
        card,
        EVENT_CD_CARTAO_PASSWORD_EVENT_VALUE,
      user)
    end


    def self.virtualCard(card, user)
      sendCardEvent(
        card,
        EVENT_CD_CARTAO_VIRTUAL_CARD_EVENT_VALUE,
      user)
    end

  end
end
