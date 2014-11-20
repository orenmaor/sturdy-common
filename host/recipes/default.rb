#
# Cookbook Name:: host
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
require 'json'

instances = Hash.new
layer = JSON.parse(node[:opsworks][:layers]['test'][:instances])

puts layer

template '/tmp/test' do
  source "test.erb"
end
