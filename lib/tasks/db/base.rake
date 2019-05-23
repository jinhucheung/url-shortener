# encoding: utf-8
namespace :db do
  task create: :environment do
    puts "start to create #{DatabaseSetting.database}"

    Sequel.connect(DatabaseSetting.to_h.merge('database' => nil)) do |db|
      db.execute "DROP DATABASE IF EXISTS #{DatabaseSetting.database}"
      db.execute "CREATE DATABASE #{DatabaseSetting.database}"
    end

    puts "created #{DatabaseSetting.database}"
  end

  task migrate: :environment do
    puts "start to create urls table"

    Sequel.connect(DatabaseSetting.to_h) do |db|
      db.create_table :urls do
        primary_key :id
        String :url, null: false, unique: true
        String :code, null: false, unique: true
      end
    end

    puts "created urls table"
  end
end