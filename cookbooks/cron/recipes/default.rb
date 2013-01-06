#
# Cookbook Name:: cron
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

cron "daily snapshot" do
  user "root"
  command "cd $HOME/src/admin-tools/release; rake --silent snapshot; chmod g+w *.gz; mv *.gz /var/www/tdiary.org/htdocs/download; rake --silent clean"
  hour "2"
  minute "0"
end
