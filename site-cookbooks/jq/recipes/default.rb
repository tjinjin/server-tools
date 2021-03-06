#
# Cookbook Name:: jq
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
pkg_version = '1.5'
binary_file = 'jq'
deploy_path = '/usr/local/bin'

remote_file "#{deploy_path}/#{binary_file}" do
  source "https://github.com/stedolan/jq/releases/download/jq-#{pkg_version}/jq-linux64"
  mode '0755'
  not_if { File.exist?('/usr/local/bin/jq') }
end
