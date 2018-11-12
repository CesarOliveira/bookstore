FactoryBot.define do
  factory :category do
    name Faker::Name.name
    description Faker::Dog.breed
  end
end
