module M2yAocubo
  module DataLake

  class Profile < M2yAocubo::DataLakeBase

    def self.updatePhoto(user)
      event_body = {"#{EVENT_CD_PERFIL_EVENT_KEY}": EVENT_CD_PERFIL_EVENT_VALUE}
      sendData(EVENT_CD_PERFIL,
               event_body,
               user)
    end
end
  end
end
