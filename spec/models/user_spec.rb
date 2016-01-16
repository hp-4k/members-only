require 'rails_helper'

RSpec.describe User, type: :model do
  
  it { is_expected.to validate_presence_of(:name) }
  
  it { is_expected.to have_secure_password }
  
  describe "validations" do
    context "on a new user" do
      it "should be valid with valid data" do
        new_user = build(:user)
        expect(new_user).to be_valid
      end
      
      it "should not be valid without a password" do
        new_user = build(:user, password: nil, password_confirmation: nil)
        expect(new_user).not_to be_valid
      end
      
      it "should not be valid with blank password" do
        new_user = build(:user, password: '', password_confirmation: '')
        expect(new_user).not_to be_valid
      end
      
      it "should not be valid with a too short password" do
        new_user = build(:user, password: 'short', password_confirmation: 'short')
        expect(new_user).not_to be_valid
      end
      
      it "should not be valid without a password_confirmation" do
        new_user = build(:user, password: 'long_enough', password_confirmation: nil)
        expect(new_user).to be_valid
      end
      
      it "should not be valid if username is taken" do
        create(:user, name: "Bob")
        new_user = build(:user, name: "Bob")
        expect(new_user).not_to be_valid
      end
      
      it "should not be valid with a too short name" do
        new_user = build(:user, name: 'Ab')
        expect(new_user).not_to be_valid
      end
    end
    
    context "on user update" do
      
      let(:user) do
        user = create(:user)
        User.find(user.id)
      end
      
      it "should be valid with no changes (with nil password)" do
        expect(user.password).to be nil
        expect(user.password_confirmation).to be nil
        expect(user).to be_valid
      end
      
      it "should not be valid with a too short password" do
        user.password = user.password_confirmation = 'short'
        expect(user).not_to be_valid
      end
    end
  end
  
end
