# -*- coding: utf-8 -*-

require 'rspec/expectations'
require 'chefspec'
require 'chefspec/berkshelf'

ChefSpec::Coverage.start! { add_filter 'webgoat' }

require 'chef/application'

describe 'webgoat::default' do
  let(:subject) do
    ChefSpec::SoloRunner.new(platform: 'debian',
                             version: '9.5') do |node|
      node.override['webgoat']['path'] = '/opt/webgoat-app'
      node.override['webgoat']['port'] = 1337
    end.converge(described_recipe)
  end

  it 'should include java recipe' do
    expect(subject).to include_recipe('java')
  end

  it 'should create webgoat directory' do
    expect(subject).to create_directory('/opt/webgoat-app')
  end

  it 'should download webgoat jar file' do
    expect(subject).to create_remote_file('/opt/webgoat-app/webgoat.jar')
      .with(source: 'https://github.com/WebGoat/WebGoat/releases/download/7.1/webgoat-container-7.1-exec.jar',
            checksum: 'cc531e1e5d5b21394963f2a9bde00e83785ba1a94340bd13bde83dc24e23b77b')
  end

  it 'should create webgoat service' do
    service = '/etc/init.d/webgoat'
    expect(subject).to create_template(service)
      .with(source: 'webgoat.erb',
            mode: '0755')
    expect(subject).to render_file(service).with_content(
      %r{^DAEMON_ARGS="-jar /opt/webgoat-app/webgoat.jar -httpPort 1337"$})
  end

  it 'should init webgoat service' do
    expect(subject).to run_execute('update-rc.d webgoat defaults')
  end

  it 'should start webgoat service' do
    expect(subject).to start_service('webgoat')
  end
end
