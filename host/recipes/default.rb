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
node[:opsworks][:layers]['test'][:instances].each do |instance_name, instance|
  puts instance[:private_ip]
end

template '/tmp/test' do
  source "test.erb"
  variables ({
  })
end
