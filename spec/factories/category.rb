FactoryBot.define do
  factory :category do
    name Faker::Book.genre
    description Faker::Dog.breed
  end
end
