# -*- coding: utf-8 -*-

require 'serverspec'
set :backend, :exec

describe file '/var/lib/tomcat7/webapps/WebGoat.war' do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode 644 }
end

describe service 'tomcat' do
  it { should be_enabled }
  it { should be_running}
end

describe port 8080 do
  it { should be_listening }
end

describe command 'wget -O - http://webgoat:webgoat@127.0.0.1:8080/WebGoat/attack' do
  its(:stdout) { should match(/WebGoat V5.4/) }
end
