#
# Cookbook:: mongodb
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_update

apt_repository 'mongodb' do
  uri          'http://repo.mongodb.org/apt/ubuntu'
  distribution 'xenial/mongodb-org/3.2'
  key 			'EA312927'
  keyserver 	'hkp://keyserver.ubuntu.com:80'
  components   ['multiverse']
end

package 'mongodb-org' do
	action :upgrade
end

template '/lib/systemd/system/mongod.service' do
	source 'mongod.service.erb'
	owner 'mongodb'
	group 'mongodb'
	mode '0750'
end

template '/etc/mongod.conf' do
	source 'mongod.conf.erb'
	owner 'mongodb'
	group 'mongodb'
	mode '0750'
end

service 'mongod' do
	action [:enable, :start]
end