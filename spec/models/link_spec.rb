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
    before :each do
      create(:link, score: 5)
      create(:link)
    end

    it "should allow sort by date desc" do
      Link.date_desc.first.should == Link.last
    end

    it "should allow sort by score desc" do
      Link.score_desc.first.should == Link.first
    end
  end

  context "score" do
    let(:link) { create(:link) }

    it "should increase score" do
      expect { link.increment_score! }.to change{ link.score }.from(0).to(1)
    end

    it "should decrease score" do
      link.increment_score!
      expect { link.decrement_score! }.to change{ link.score }.from(1).to(0)
    end
  end
end
