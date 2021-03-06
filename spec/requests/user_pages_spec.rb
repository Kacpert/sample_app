require 'spec_helper'

describe "UserPages" do
	let(:rortsa) {"Ruby on Rails Tutorial Sample App | "}

	subject { page }

  
  describe "edit" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit edit_user_path(user) }

    describe "page" do
      it { should have_content("Update your profile") }
      it { should have_title("Edit user") }
      it { should have_link('Zmień', href: 'http://gravatar.com/emails') }
    end

    describe "with invalid information" do
      before { click_button "Zapisz zmiany" }

      it { should have_content('error') }
    end
  end

  


  describe "Sign up" do
  	before { visit signup_path }

    it { should have_title("#{rortsa}Sign up")}
    it { should have_content("Sign up") }
  end
  
  describe "sugnup" do
    before { visit signup_path }
    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "shouldn`t save user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Example User"
        fill_in "Email",        with: "user@example.com"
        fill_in "Password",     with: "foobar"
        fill_in "Confirmation", with: "foobar"
      end
      it "should save user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
      describe "after saving the user" do
        before { click_button submit }
        let(:user) { User.find_by(email: 'user@example.com') }

        it { should have_link('Sign out') }
        it { should have_title(user.name) }
        it { should have_selector('div.alert.alert-success', text: 'Witaj') }
      end
    end
  end

  describe "profile page" do
  	let(:user) { FactoryGirl.create(:user) }
  	before { visit user_path(user) }

  	it { should have_content(user.name) }
  	it { should have_title(user.name) }
  end
end
