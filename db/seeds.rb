# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning database..."
Restaurant.destroy_all
puts 'database is clean'
puts 'creating restaurants'
100.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: Restaurant::CATEGORIES.sample,
  )
  review_instance = Review.create(
      content: Faker::Restaurant.review,
      rating: rand(0..5)
  )
  review_instance.restaurant
  puts "restaurant #{restaurant.id} is created"
  puts "review #{review_instance.id} is created"
end

# restaurants.each do |restaurant|
#   review_instance = Review.create(
#     content: Faker::Restaurant.review,
#     rating: rand(0..5)
#   )
#   review.restaurant = review_instance
#   puts "review #{review_instance.id} is created"
# end

puts 'done!'
