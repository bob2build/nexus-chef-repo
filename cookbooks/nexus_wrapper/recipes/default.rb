#
# Cookbook Name:: nexus_wrapper
# Recipe:: default
#
# Copyright (C) 2016 Bob
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#



include_recipe "nexus::cli"
include_recipe "nexus::app"

nexus_proxy_repository 'gems' do
  url 'https://rubygems.org'
  repo_provider 'rubygems-proxy'
  action :create
end

nexus_hosted_repository 'java' do
  repo_provider 'maven2'
  action :create
end
