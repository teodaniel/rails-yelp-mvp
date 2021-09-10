# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating restaurants...'
5.times do
  restaurant_attr = { name: Faker::Restaurant, address: Faker::Address.full_address }
  restaurant = Restaurant.create!(restaurant_attr)
  puts "Created #{restaurant.name}"
  rating_attr = { content: Faker::Restaurant.review, restaurant_id: restaurant.id }
  review = Rating.create!(rating_attr)
  puts "Created a rating of #{review.rating} for #{restaurant.name}"
end

puts 'Finished!'
