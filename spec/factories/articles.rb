FactoryBot.define do
  factory :article do
    title { Faker::Lorem.sentence }
    is_published { Faker::Boolean.boolean }
    publish_date { Faker::Date.in_date_period }
    content { Faker::Lorem.paragraph }
  end
end
