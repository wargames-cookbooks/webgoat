# -*- coding: utf-8 -*-
#
# Cookbook:: webgoat
# Attributes:: default
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

default['webgoat']['path'] = '/opt/webgoat'
default['webgoat']['port'] = 8080
default['webgoat']['jar'] = 'https://github.com/WebGoat/WebGoat/releases/download/7.1/webgoat-container-7.1-exec.jar'
default['webgoat']['checksum'] = 'cc531e1e5d5b21394963f2a9bde00e83785ba1a94340bd13bde83dc24e23b77b'
