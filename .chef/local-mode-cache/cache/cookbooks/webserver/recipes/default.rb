#
# Cookbook:: webserver
# Recipe:: default
#
# Copyright: lethisaputri : 2019, The Authors, All Rights Reserved.

include_recipe 'ntpserver::default'

# webserver package installation
package 'apache2' do
  action :install
end

# webserver file configuration
file '/var/www/html/index.html' do
  content "this is my chef configured web server file\n"
  action :create
end

# webserver service startup
service 'apache2' do
  action :start
end
