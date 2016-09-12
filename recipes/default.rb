#
# Cookbook Name:: rg
# Recipe:: default
#
# Copyright (C) 2016 Peter O'Donovan
#
# All rights reserved - Do Not Redistribute
#

include_recipe "chef_nginx"
include_recipe "ruby_build"
include_recipe "rg::unicorn"
