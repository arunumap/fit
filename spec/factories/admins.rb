# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password_digest "asd123"
  end
end
