#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2013, S2.net
#
# All rights reserved - Do Not Redistribute
#

# install nginx
package "nginx" do
	action :install
end

# start the server
service "nginx" do
	action [:start, :enable]
end

# create the web dir
directory "/var/www" do
	owner "www-data"
	group "www-data"
	mode 0755
	action :create
end

# write index file
cookbook_file "/var/www/index.html" do
	source "index.html"
	mode 0644
end
