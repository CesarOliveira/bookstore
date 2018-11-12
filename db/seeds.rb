puts 'Seeding database...'

puts 'Creating Category Seeds...'

category_one = Category.create(
  name: Faker::Book.genre,
  description: Faker::Lorem.sentence(3),
  likes: Faker::Number.number(3)
)

category_two = Category.create(
  name: Faker::Book.genre,
  description: Faker::Lorem.sentence(3),
  likes: Faker::Number.number(3)
)

category_three = Category.create(
  name: Faker::Book.genre,
  description: Faker::Lorem.sentence(3),
  likes: Faker::Number.number(3)
)

puts 'Creating Books Seeds...'

5.times do
  Book.create(
    name: Faker::Book.title,
    description: Faker::Lorem.sentence(3),
    author: Faker::Book.author,
    likes: Faker::Number.number(3),
    category: category_one
  )
end

5.times do
  Book.create(
    name: Faker::Book.title,
    description: Faker::Lorem.sentence(3),
    author: Faker::Book.author,
    likes: Faker::Number.number(3),
    category: category_two
  )
end

5.times do
  Book.create(
    name: Faker::Book.title,
    description: Faker::Lorem.sentence(3),
    author: Faker::Book.author,
    likes: Faker::Number.number(3),
    category: category_three
  )
end
