# !/bin/bash

APP_ENV="development"

while getopts "e:" opt; do
  case $opt in
    e)
      APP_ENV=$OPTARG
      ;;
  esac
done

bundle exec rake db:create RACK_ENV=$APP_ENV

bundle exec rake db:migrate RACK_ENV=$APP_ENV