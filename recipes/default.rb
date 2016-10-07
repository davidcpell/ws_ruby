#
# Cookbook Name:: ws_ruby
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

system_rbenv '/usr/local/' do 
  rbenv_users ['david', 'vagrant']
end

ruby_version '2.2.2'

global_ruby  '2.2.2'
