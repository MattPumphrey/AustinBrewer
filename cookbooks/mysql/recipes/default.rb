#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "mysql" do
	action :install
end

service "mysqld" do
	action [ :enable, :start, :status, :stop ]
end

