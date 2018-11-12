FactoryBot.define do
  factory :book do
    name Faker::Book.title
    description Faker::Lorem.sentence(3)
    author Faker::Book.author
    association :category
  end
end
