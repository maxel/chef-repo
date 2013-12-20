#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2013, S2.net
#
# All rights reserved - Do Not Redistribute
#

package node["package_name"] do
	action :install
end

# start the server
service node["service_name"] do
	action [:start, :enable]
    supports :restart => true, :reload => true
    subscribes :restart, "template[/etc/nginx/sites-available/default]", :immediately
end

# create the web dir
directory node["doc_root"] do
	owner "www-data"
	group "www-data"
	mode 0755
	action :create
end

# write index file
template "#{node["doc_root"]}/index.html" do
    source "index.html.erb"
    mode "0644"
end

# write the default site configuration file
template "/etc/nginx/sites-available/default" do
    source "nginx-default-site.erb"
    mode "0644"
end
