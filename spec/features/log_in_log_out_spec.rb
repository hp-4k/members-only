require 'rails_helper'
require 'capybara/rspec'

RSpec.feature "logging in", type: :feature do
  
  let(:user) do
    create(:user)
  end
  
  context "with valid credentials" do
    
    it "redirects the user to root" do
      visit login_path
      fill_in "User name", with: user.name
      fill_in "Password", with: user.password
      click_button "Log in"
      expect(page.current_path).to eq root_path
      expect(page).to have_content(user.name)
      expect(page).to have_link("Log out", href: logout_path)
    end
  end
  
  context "with invalid credentials" do
    
    it "rerenders the form with a warning message" do
      visit login_path
      fill_in "User name", with: 'junk'
      fill_in "Password", with: 'junk'
      click_button "Log in"
      expect(page.current_path).to eq login_path
      expect(page).to have_content("Invalid")
    end
  end
end