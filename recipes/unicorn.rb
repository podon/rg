#
# Cookbook Name:: rg
# Recipe:: unicorn
#
# Copyright (C) 2016 Peter O'Donovan
#
# All rights reserved - Do Not Redistribute
#

ruby_build_ruby "2.2.3"

# Install ruby
package ['gcc', 'make']

# Install unicorn gem
gem_package 'unicorn'
