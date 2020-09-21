# frozen_string_literal: true

module M2yAocubo
  class Configuration

    attr_writer :ao3_data_server_url, :ao3_sso_server_url, 
    :ao3_api_key, :ao3_client_id, :ao3_client_secret

    def initialize #:nodoc:
      @ao3_data_server_url = nil
      @ao3_sso_server_url = nil
      @ao3_api_key = nil
      @ao3_client_id = nil
      @ao3_client_secret = nil
    end

    def ao3_data_server_url
      @ao3_data_server_url
    end

    def ao3_sso_server_url
      @ao3_sso_server_url
    end

    def ao3_api_key
      @ao3_api_key
    end

    def ao3_client_id
      @ao3_client_id
    end

    def ao3_client_secret
      @ao3_client_secret
    end
  end
end
