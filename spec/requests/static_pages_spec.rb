require 'spec_helper'

describe "Static_Pages " do
  describe "Home Page" do
    it "should have content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end
  describe "Help page" do
  	it "Should have content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end
    it "should have right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end
  describe "About us" do 
  	it "should have content 'About Us'" do
  		visit '/static_pages/about_us'
  		expect(page).to have_content('About us')
  	end
    it "should have right title" do
      visit '/static_pages/about_us'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About us")
    end
  end
end
