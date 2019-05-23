# encoding: utf-8
module App
  class Base < Guillotine::App
    database = Sequel.connect(DatabaseSetting.to_h)

    adapter = Guillotine::Adapters::SequelAdapter.new(database)

    set service: App::Service.new(adapter, ServiceSetting.to_h)
  end
end