FactoryBot.define do
  factory :contact do
    user
    name { 'Some Name' }
    sequence(:email) { |n| "some#{n}@email.com" }
    date_of_birth { '1990-07-12' }
    telephone { '(+57) 320 432 05 09.' }
    address { 'some address' }
    credit_card_number { '4111111111111111' }
    credit_card_franchise { 'VISA' }
  end
end
