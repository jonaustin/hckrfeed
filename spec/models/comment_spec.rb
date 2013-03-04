require 'spec_helper'

describe Comment do
  context "validation failure" do
    it "without link" do
      Comment.new.should have(1).error_on(:link_id)
    end

    it "without comment" do
      Comment.new.should have(1).error_on(:comment)
    end
  end
end
