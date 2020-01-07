# -*- coding: utf-8 -*-
#
# Cookbook:: webgoat
# Recipe:: default
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'java'

directory node['webgoat']['path'] do
  recursive true
end

remote_file "#{node['webgoat']['path']}/webgoat.jar" do
  source node['webgoat']['jar']
  checksum node['webgoat']['checksum']
end

template '/etc/init.d/webgoat' do
  source 'webgoat.erb'
  mode '0755'
  variables path: node['webgoat']['path'],
            port: node['webgoat']['port']
end

execute 'update-rc.d webgoat defaults'

service 'webgoat' do
  action :start
end
