#
# Cookbook Name:: host
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
require 'json'

instance_ips = Array.new

node[:opsworks][:layers]['test'][:instances].keys.each do |key|
	instance_ips.push(node[:opsworks][:layers]['test'][:instances][key][:private_ip])
end

template '/tmp/test' do
  source "test.erb"
  variables ({
	:layer => instance_ips
  })
end
