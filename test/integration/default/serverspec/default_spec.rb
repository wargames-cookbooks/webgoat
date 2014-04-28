require "spec_helper"

describe file("/var/lib/tomcat6/webapps/WebGoat.war") do
  it { should be_file }
end
