#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
service 'nginx' do
  action [:enable, :start]
  supports reload: true
end

cookbook_file '/etc/nginx/nginx.conf' do
  notifies :reload, 'service[nginx]'
end
