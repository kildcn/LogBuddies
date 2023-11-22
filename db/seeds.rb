# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# List of users
User.destroy_all

users = [
  { first_name: 'John', last_name: 'Doe', email: 'john@example.com', password: 'password123' },
  { first_name: 'Jane', last_name: 'Smith', email: 'jane@example.com', password: 'password123' },
]
users.each do |user_attributes|
  User.create user_attributes
end

puts "Users created: #{User.count}"

# db/seeds.rb

# Example bikes
bikes = [
  {
    brand: 'Mountain Explorer',
    description: 'A rugged bike suitable for off-road adventures.',
    user_id: 1,
    price: 15.0,
    availability_start_date: '2023-01-01',
    availability_end_date: '2023-03-31',
    photo: 'https://i5.walmartimages.com/seo/Hyper-Bicycle-Men-s-29-In-Explorer-Dual-Suspension-Mountain-Bike-Red_d885e90f-d5fa-4c8d-b79a-801ed6ae5bb2.38883fa729039ce5aaf1ffd4395718b7.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF'
  },
  {
    brand: 'City Cruiser',
    description: 'Perfect for city rides and daily commutes.',
    user_id: 2,
    price: 10.0,
    availability_start_date: '2023-04-01',
    availability_end_date: '2023-06-30',
    photo: 'https://example.com/photos/city_cruiser.jpg'
  },
  {
    brand: 'Speed Racer',
    description: 'A fast bike for those who love speed.',
    user_id: 3,
    price: 20.0,
    availability_start_date: '2023-07-01',
    availability_end_date: '2023-09-30',
    photo: 'https://example.com/photos/speed_racer.jpg'
  }
  # ... add more bikes as needed
]

# Creating bikes
bikes.each do |bike_attributes|
  Bike.create bike_attributes
end
puts 'Bike seeds created!'
