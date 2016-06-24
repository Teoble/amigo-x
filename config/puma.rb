workers Integer(ENV['WEB_CONCURRENCY'] || 0)
threads_count = Integer(ENV['RAILS_MAX_THREADS'] || 1)
threads threads_count, threads_count

# preload_app!
prune_bundler

environment ENV['RAILS_ENV'] || 'development'

port        ENV['PORT']     || 3000
#
# on_worker_boot do
#   # Mongoid.load!(File.join(Rails.root, 'config', 'mongoid.yml'))
# end

# daemonize

worker_timeout 30

tag 'AmigoX'

@dir = File.expand_path('../', File.dirname(__FILE__))

rackup File.join(@dir, 'config.ru')

directory @dir
#
# pidfile File.join(@dir, 'tmp', 'pids', 'puma.pid')
#
# state_path File.join(@dir, 'tmp', 'pids', 'puma.state')

# stdout_redirect File.join(@dir, '/log/puma.stdout.log'), File.join(@dir, '/log/puma.stderr.log'), true

# activate_control_app
