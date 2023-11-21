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
