require 'spec_helper'

describe "Static_Pages " do

  let(:rortsa) {"Ruby on Rails Tutorial Sample App | "}
  let(:rorts) {"Ruby on Rails Tutorial Sample App"}
  subject { page }

  describe "Home Page" do
    before {visit root_path}
    it { should have_content('Sample App') }
    it { should have_title("#{rorts}") }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }
  	it { should have_content('Help') }
    it { should have_title("#{rortsa} Help") }
  end

  describe "About us" do
    before { visit about_us_path } 
  	it { should have_content('About Us') }  	
    it { should have_title("#{rortsa} About Us") }
  end
  describe "Contact" do
    before { visit contact_path }
    it { should have_selector('h1', text: 'Contact') }
    it { should have_title("#{rortsa} Contact") }
    it { should have_content("Contact") }
  end
end
