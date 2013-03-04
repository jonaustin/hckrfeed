require 'spec_helper'

describe "Links" do
  describe "GET /links" do
    before :each do
      create(:link, name: 'default first', score: 1)
      create(:link, name: 'Hckrfeed', score: 0)
      visit links_path
    end

    it "should show link with highest score first by default" do
      page.first('#links tbody tr td:nth-child(4)').text.should =~ /default first/
    end

    it "should change order when upvoted" do
      link_id = Link.find_by_name('Hckrfeed').id
      click_on "upvote_#{link_id}"
      click_on "upvote_#{link_id}"
      page.first('#links tbody tr td:nth-child(4)').text.should =~ /Hckrfeed/
    end
  end
end
