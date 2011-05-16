set :user, "adam"

set :application, "julie-20years"

role :app, "julieibragimova.com"
role :web, "julieibragimova.com"
role :db,  "julieibragimova.com", :primary => true

set :scm, "git"
set :repository,  "git@github.com:adammiribyan/julie-20years.git"
set :deploy_via, :remote_cache

ssh_options[:forward_agent] = true
default_run_options[:pty] = true

set :keep_releases, 5
set :use_sudo, false

set :branch, "master"
set :deploy_to, "/home/#{user}/webapps/#{application}"

namespace :deploy do
  desc "Restart application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
end