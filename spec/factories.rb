FactoryGirl.define do
  factory :user do
    name         "Test"
    email        "test@test.com"
    password     "123456"
    password_confirmation  "123456"
  end
end
