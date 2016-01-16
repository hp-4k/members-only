FactoryGirl.define do
  factory :user do
    name "New User"
    password 'password'
    password_confirmation 'password'
  end
end
