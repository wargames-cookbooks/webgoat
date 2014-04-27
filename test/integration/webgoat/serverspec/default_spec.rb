require "spec_helper"

describe "webgoat::default" do
  it 'ensures war deployed' do
        file(node["tomcat"]["webapp_dir"] + "/WebGoat.war").must_exist
      .with(:mode, "644")
      .and(:owner, "root")
      .and(:group, "root")
  end
end
