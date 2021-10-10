FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user_#{n}_email@test.com" }
    password { 'some_password' }
  end
end
