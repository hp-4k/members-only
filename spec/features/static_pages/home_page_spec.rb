require 'rails_helper'

RSpec.describe "Home page", type: :feature do
  describe "navigation links" do
    it "should have all navigation links" do
      visit root_url
      expect(page).to have_link('Log in')
    end
  end
end