FactoryBot.define do
  factory :category do
    name Faker::Book.genre
    description Faker::Lorem.sentence(3)
  end
end
