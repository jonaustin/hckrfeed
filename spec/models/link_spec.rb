require 'spec_helper'

describe Link do
  context "validation failure" do
    it "without name" do
      Link.new.should have(1).error_on(:name)
    end

    it "without username" do
      Link.new.should have(1).error_on(:username)
    end

    it "without url" do
      Link.new.should have(1).error_on(:url)
    end
  end

  context "scopes" do
    it "should allow sort by date desc" do
      create(:link)
      create(:link)
      Link.date_desc.first.should == Link.last
    end
  end
end
