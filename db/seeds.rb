# List of users
User.destroy_all
Bike.destroy_all

puts "Cleaning Database 🧼"

puts "Creating users ✌️"
# Users
killian = User.create(first_name: 'Killian', last_name: 'Doe', email: 'killian@test.com', password: '123456')
maksym = User.create(first_name: 'Maksym', last_name: 'Doe', email: 'maksym@test.com', password: '123456')
alberto = User.create(first_name: 'Alberto', last_name: 'Doe', email: 'alberto@test.com', password: '123456')
emma = User.create(first_name: 'Emma', last_name: 'Doe', email: 'emma@test.com', password: '123456')

puts "Users created: #{User.count}"

puts "Creating bikes .... 🚴🏼‍♀️🚴🏽🚴🏽‍♂️"

# Bikes
bikes = [
  {
    brand: 'Mountain Explorer',
    description: 'A rugged bike suitable for off-road adventures.',
    price: 15.0,
    availability_start_date: '2023-01-01',
    availability_end_date: '2023-03-31',
    photo: 'https://i5.walmartimages.com/seo/Hyper-Bicycle-Men-s-29-In-Explorer-Dual-Suspension-Mountain-Bike-Red_d885e90f-d5fa-4c8d-b79a-801ed6ae5bb2.38883fa729039ce5aaf1ffd4395718b7.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF'
  },
  {
    brand: 'City Cruiser',
    description: 'Perfect for city rides and daily commutes.',
    user_id: "2",
    price: 10.0,
    availability_start_date: '2023-04-01',
    availability_end_date: '2023-06-30',
    photo: 'https://example.com/photos/city_cruiser.jpg'
  },
  {
    brand: 'Speed Racer',
    description: 'A fast bike for those who love speed.',
    user_id: killian.id,
    price: 20.0,
    availability_start_date: '2023-07-01',
    availability_end_date: '2023-09-30',
    photo: 'https://example.com/photos/speed_racer.jpg'
  }
]

emmasbike = Bike.new(brand: 'Speed Racer', description: 'A fast bike for those who love speed.', user_id: emma.id, price: 20.0, availability_start_date: '2023-07-01', availability_end_date: '2023-09-30', photo: 'https://example.com/photos/speed_racer.jpg')
emmasbike.save!

bikes.each do |bike_attributes|
  Bike.create!(
    brand: bike_attributes[:brand],
    description: bike_attributes[:description],
    price: bike_attributes[:price],
    user: [killian, emma, alberto, maksym].sample,
    availability_start_date: '2023-07-01',
    availability_end_date: '2023-09-30',
    photo: 'https://example.com/photos/speed_racer.jpg'
  )
end

puts "Bike seeds created: #{Bike.count} 🌱"
