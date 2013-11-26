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

# write index file
cookbook_file "/var/www/indexhtml" do
	source "index.html"
	mode 0644
end
