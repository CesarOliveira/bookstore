FactoryBot.define do
  factory :book do
    name Faker::Book.title
    description Faker::Dog.breed
    author Faker::Book.author
    association :category
  end
end
