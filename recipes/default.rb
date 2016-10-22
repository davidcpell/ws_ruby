#
# Cookbook Name:: ws_ruby
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'rbenv'
include_recipe 'rbenv::ruby_build'

rbenv_ruby '2.2.5' do 
  global true
end
