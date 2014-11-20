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
data = node[:opsworks][:layers]['test'][:instances]
layer = JSON.parse(data)

template '/tmp/test' do
  source "test.erb"
  variables ({
	:layer => layer
  })
end
