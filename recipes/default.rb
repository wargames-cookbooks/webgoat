# This source file is part of WebGoat's chef cookbook.
#
# WebGoat's chef cookbook is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# WebGoat's chef cookbook is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with WebGoat's chef cookbook. If not, see <http://www.gnu.org/licenses/gpl-3.0.html>.
#
# Cookbook Name:: webgoat
# Recipe:: default
#

if platform_family?("debian")
  include_recipe "apt"
end

include_recipe "java"
include_recipe "openssl"
include_recipe "tomcat"
include_recipe "tomcat::users"

dl_url = "http://webgoat.googlecode.com/files/WebGoat-5.4.war"
localfile = node["tomcat"]["webapp_dir"] + "/WebGoat.war"

remote_file localfile do
  source dl_url
  mode "0644"
end
