FactoryBot.define do
  factory :user do
    email { "#{Faker::Name.first_name}@test.com" }
    password { Faker::Lorem.words }
  end
end
