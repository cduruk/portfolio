default_run_options[:pty] = true
set :application, "portfolio"
set :scm, :git
set :repository,  "git@github.com:cduruk/portfolio.git"

role :web, "linode"                          # Your HTTP server, Apache/etc
role :app, "linode"                          # This may be the same as your `Web` server

set :deploy_to, "/srv/www/beta.duruk.net/public_html"
set :deploy_via, :export
set :shared_children, []

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end