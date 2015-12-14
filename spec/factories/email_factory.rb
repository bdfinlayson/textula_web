FactoryGirl.define do
  sequence :email do |n|
    "test.user#{n}@example.com"
  end
end
