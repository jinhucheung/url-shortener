# encoding: utf-8
require 'rubygems'
require 'guillotine'
require 'sequel'

require File.expand_path('../config/setting', __FILE__)
require File.expand_path('../app/service', __FILE__)
require File.expand_path('../app/base', __FILE__)

run App::Base