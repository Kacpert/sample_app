require 'spec_helper'

describe "UserPages" do
	let(:rortsa) {"Ruby on Rails Tutorial Sample App | "}

	subject { page }

  describe "Sign up" do
  	before { visit signup_path }

    it { should have_title("#{rortsa}Sign up")}
    it { should have_content("Sign up") }
  end
  describe "profile page" do
  	let(:user) { FactoryGirl.create(:user) }
  	before { visit user_path(user) }
  	it { should have_content(user.name) }
  	it { should have_title(user.name) }
  end
end
