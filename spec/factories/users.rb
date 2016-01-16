FactoryGirl.define do
  factory :user do
    name "Example"
    password 'password'
    password_confirmation 'password'
  end
end
