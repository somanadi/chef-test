#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
#Install apache Package
if node['platform_family'] =="rhel"
          package=="http"
elseif node['platform_family']=="debian"
	  package=="apache2"
end

package 'apache2' do
	package_name package
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:enable, :start]
end



