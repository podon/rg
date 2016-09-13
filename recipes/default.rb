#
# Cookbook Name:: rg
# Recipe:: default
#
# Copyright (C) 2016 Peter O'Donovan
#
# All rights reserved - Do Not Redistribute
#

execute 'update-sources' do
  command 'apt-get update -y'
end

include_recipe "chef_nginx"
include_recipe "rg::unicorn"
