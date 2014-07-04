require 'spec_helper'

describe "Static_Pages " do
  describe "Home Page" do
    it "should have content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end
  describe "Help page" do
  	it "Should have content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end
  end
end
