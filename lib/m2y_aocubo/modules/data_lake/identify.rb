module M2yAocuboDataLake

  class Identify < M2yAocubo::DataLake

    def self.sendIdentifyEvent(body, request, user)
      body[:device] = request.user_agent
      body[:ip] = request.remote_ip
      sendData(EVENT_IDENTIFY,
               body,
               user)
    end

    def self.login(user, request)
      event_body = {status_login: 1}
      sendIdentifyEvent(
        event_body,
        request,
      user)
    end

    def self.loginError(user, request)
      event_body = {status_login: 2}
      sendIdentifyEvent(
        event_body,
        request,
      user)
    end
  end
end
