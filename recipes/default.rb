#
# Cookbook:: chef-test
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

yum_repository "elasticsearch" do
  description "Elasticsearch repository for 2.x packages"
  baseurl "http://packages.elastic.co/elasticsearch/2.x/centos"
  gpgkey "https://packages.elastic.co/GPG-KEY-elasticsearch"
  action :create
end

package "elasticsearch"

service "elasticsearch" do
  actions :enable :start
end
