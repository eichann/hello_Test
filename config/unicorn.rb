worker_processes 3
timeout 15 
# preload_app true

listen "/tmp/sockets/unicorn.sock"
pid    "tmp/pids/unicorn.pid"
stderr_path File.expand_path('log/unicorn.log', ENV['RAILS_ROOT'])

# before_fork do |server, worker|
#   old_pid = "#{ server.config[:pid] }.oldbin"
#   if File.exists?(old_pid) && server.pid != old_pid
#     begin
#       Process.kill("QUIT", File.read(old_pid).to_i)
#     rescue Errno::ENOENT, Errno::ESRCH
#     end
#   end

#   defined?(ActiveRecord::Base) and
#   ActiveRecord::Base.connection.disconnect!
# end 

# after_fork do |server, worker|
#   Signal.trap 'TERM' do
#     puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
#   end

#   defined?(ActiveRecord::Base) and
#   ActiveRecord::Base.establish_connection
# end

# def rails_root
#   require "pathname"
#   Pathname.new(__FILE__) + "../../"
# end

