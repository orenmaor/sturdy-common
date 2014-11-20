#
# Cookbook Name:: host
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
require 'json'

layer = node[:opsworks][:layers]['test'][:instances].first['private_ip']

template '/tmp/test' do
  source "test.erb"
  variables ({
	:layer => instance_ip
  })
end
