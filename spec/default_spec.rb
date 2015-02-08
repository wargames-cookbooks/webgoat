# -*- coding: utf-8 -*-

require 'rspec/expectations'
require 'chefspec'
require 'chefspec/berkshelf'

ChefSpec::Coverage.start! { add_filter 'webgoat' }

require 'chef/application'

describe 'webgoat::default' do
  let(:subject) do
    ChefSpec::SoloRunner.new do |node|
      node.set['tomcat']['webapp_dir'] = '/opt/tomcat/webapp'
    end.converge(described_recipe)
  end

  it 'should download war file and place it in tomcat webapp directory' do
    expect(subject).to create_remote_file('/opt/tomcat/webapp/WebGoat.war')
      .with(source: 'http://webgoat.googlecode.com/files/WebGoat-5.4.war')
  end
end
