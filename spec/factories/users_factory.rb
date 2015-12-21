FactoryGirl.define do
  factory :user do
    email
    password "password"
    password_confirmation "password"
    after(:create) { |user| user.confirm }
  end
end
