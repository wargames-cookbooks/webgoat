# -*- coding: utf-8 -*-

require 'serverspec'
set :backend, :exec

describe file('/opt/wg') do
  it { should be_directory }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode 755 }
end

describe file('/etc/init.d/webgoat') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode 755 }
end

describe file('/opt/wg/webgoat.jar') do
  it { should be_file }
  it { should be_mode 644 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe service 'webgoat' do
  it { should be_enabled }
  it { should be_running }
end

describe port 8081 do
  it { should be_listening }
end

describe command 'wget -O - http://127.0.0.1:8081/WebGoat/attack' do
  its(:stdout) { should match(/Login Page/) }
end
