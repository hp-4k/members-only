require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  it { is_expected.to route(:get, '/login').to(action: :new) }
  it { is_expected.to route(:post, '/login').to(action: :create) }
  it { is_expected.to route(:delete, '/logout').to(action: :destroy) }
  
  describe '#create' do
    context "with valid credentials" do
      
      before :each do
        @user = create(:user)
        post :create, session: { name: @user.name, password: @user.password }
      end
      
      it "logs the user in" do
        expect(cookies[:remember_token]).not_to be nil
      end
      
      it "redirects to root" do
        expect(response).to redirect_to(root_url)
      end
    end
    
    context "with invalid credentials" do
      
      before :each do
        user = create(:user)
        post :create, session: { name: user.name, password: 'junk' }
      end
      
      it "rerenders the login form" do
        expect(response).to render_template("new")
      end
      
      it "generates a flash message" do
        expect(flash).not_to be_empty
      end
    end
  end
end
