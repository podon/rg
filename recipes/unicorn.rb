#
# Cookbook Name:: rg
# Recipe:: unicorn
#
# Copyright (C) 2016 Peter O'Donovan
#
# All rights reserved - Do Not Redistribute
#


# Install ruby
package ['ruby', 'ruby-dev','git','ruby-bundler']

# Install unicorn gem
gem_package 'unicorn'

template "#{node['nginx']['dir']}/sites-available/default" do
  source 'unicorn-site.erb'
  notifies :reload, 'service[nginx]', :delayed
end

directory '/opt/app' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

# Download sinatra app git repo
git "#{node['application']['dir']}" do
  repository 'https://github.com/tnh/simple-sinatra-app'
  revision 'master'
  action :sync
end

# Install the app gems
execute 'install app deps' do
  command 'bundle install'
  cwd "#{node['application']['dir']}"
end

# Start the app as a daemon
service 'rea-app' do
  start_command "cd #{node['application']['dir']} && bundle exec rackup -D"
  action [ :start ]
end

