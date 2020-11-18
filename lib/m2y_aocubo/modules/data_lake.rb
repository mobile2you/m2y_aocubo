require 'm2y_aocubo/constants/datalake_constants'
require 'm2y_aocubo/modules/data_lake/billet'
require 'm2y_aocubo/modules/data_lake/card'
require 'm2y_aocubo/modules/data_lake/consult'
require 'm2y_aocubo/modules/data_lake/identify'
require 'm2y_aocubo/modules/data_lake/payment'
require 'm2y_aocubo/modules/data_lake/profile'
require 'm2y_aocubo/modules/data_lake/recharge'
require 'm2y_aocubo/modules/data_lake/sso'
require 'm2y_aocubo/modules/data_lake/transfer'


module M2yAocubo

  class DataLake

    def self.baseUrl
      M2yAocubo.configuration.ao3_data_server_url
    end

    def self.basicHeaders
      headers = {'Content-Type' => "application/json"}
      headers["x-api-key"] = M2yAocubo.configuration.ao3_api_key
      headers["x-csrf-token"] = "ao#{Time.now.to_i}3"
      headers
    end

    def self.sendDataDynamic(params)
      url = "#{baseUrl}/#{DYNAMIC_INGEST}"
      req = HTTParty.post(url, headers: basicHeaders, body: params )
    end

    def self.sendDataEvent(identifyId, eventId, eventName, params)
      url = "#{baseUrl}/#{DYNAMIC_INGEST}"
      trackProperties = bodyFromParams(params)
      body = {
        eventId: eventId,
        eventName: eventName,
        identifyId: identifyId,
        trackProperties: trackProperties
      }
      req = HTTParty.post(url, headers: basicHeaders, body: body.to_json )
    end

    def self.identify(userId, username)
      url = "#{baseUrl}/#{IDENTIFY}"
      body = {userId: userId,
              identifyTraits: [
                {
                  key: "username",
                  value: username
                }

              ]
              }
      req = HTTParty.post(url, headers: basicHeaders, body: body.to_json)
    end

    def self.bodyFromParams(params)
      body = []
      if !params.nil?
        params.keys.each do |key|
          if RESTRICTED_KEYS.include?(key)
            body << {key: key, value: params[:key] }
          end
        end
      end
      body
    end


    def self.safeBody(body, public_key)
      body[:client_id] = M2yAocubo.configuration.ao3_client_id
      body.keys.each do |key|
        if SAFE_KEYS.include?(key)
          body[key] = crypt(body[key], public_key)
        end
      end
      body.to_json
    end


    def self.sendData(event, params, user)
      if user.present?
        identify_response = identify(user.ao3_id, user.document_plain)
        identify = identify_response.parsed_response["id"]
        if identify.present?
          params[:username] = user.document_plain
          d = sendDataEvent(identify, event, event, params)
        end
      end
    end

  end
end
