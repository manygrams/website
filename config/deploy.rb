lock '3.1.0'

set :application, 'website'
set :repo_url, 'git@github.com:manygrams/website.git'

set :deploy_to, '/home/deploy/website'
set :deploy_via, :remote_cache

namespace :deploy do

  desc 'Build Jekyll'
  task :build do
    on roles(:web) do
      execute "cd #{current_path} && bundle exec jekyll build"
      execute "cp -R #{current_path}/_site/* /var/www/nicolasevans.org/html"
    end
  end

  after :publishing, :build
end
