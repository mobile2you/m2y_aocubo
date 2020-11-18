require 'm2y_aocubo/configuration/configuration'
require 'm2y_aocubo/constants/constants'
require 'm2y_aocubo/modules/data_lake_base'
require 'm2y_aocubo/modules/base'
require 'm2y_aocubo/modules/registration'
require 'm2y_aocubo/modules/login'
require 'm2y_aocubo/modules/password'
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

  # Gives access to the current Configuration.
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    config = configuration
    yield(config)
  end

  def self.with_configuration(config)
    original_config = {}

    config.each do |key, value|
      original_config[key] = configuration.send(key)
      configuration.send("#{key}=", value)
    end

    yield if block_given?
  ensure
    original_config.each { |key, value| configuration.send("#{key}=", value) }
  end

end
