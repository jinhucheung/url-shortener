# encoding: utf-8

require 'fileutils'

app_dir = File.expand_path '../../', __FILE__
pid_dir = "#{app_dir}/tmp/pids"

worker_processes 2
working_directory app_dir

timeout 30

listen ENV['URL_SHORTNER_IP'] || 3100

FileUtils.mkdir_p(pid_dir) unless File.exist?(pid_dir)

pid "#{pid_dir}/unicorn.pid"
stderr_path "#{app_dir}/log/unicorn.stderr.log"
stdout_path "#{app_dir}/log/unicorn.stdout.log"