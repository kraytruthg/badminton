FactoryGirl.define do
  factory :player do
    name { Faker::Name.first_name }
    email { Faker::Internet.email }
  end
end
