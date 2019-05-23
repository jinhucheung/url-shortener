# encoding: utf-8

require 'sinatra'
require 'settingslogic'

class DatabaseSetting < Settingslogic
  source File.expand_path('../database.yml', __FILE__)

  namespace ::Sinatra::Application.environment.to_s
end

class ServiceSetting < Settingslogic
  CHARSETS = {
    alphanum: [*'a'..'z', *'0'..'9'],
    alphanumcase: [*'a'..'z', *'A'..'Z', *'0'..'9']
  }.freeze

  source File.expand_path('../service.yml', __FILE__)

  namespace ::Sinatra::Application.environment.to_s

  self[:charset] = CHARSETS[charset.to_sym] rescue CHARSETS[:alphanumcase]
end