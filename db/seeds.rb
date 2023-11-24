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
    photo_url: 'https://cdn.pixabay.com/photo/2016/11/18/12/49/bicycle-1834265_1280.jpg',
    review:'I almost died. It has no brakes',
    rating: 1,
    renter: 'Peter Griffin'
    },
  {
    brand: 'City Cruiser',
    description: 'Perfect for city rides and daily commutes.',
    user_id: "2",
    price: 10.0,
    availability_start_date: '2023-04-01',
    availability_end_date: '2023-06-30',
    photo_url: 'https://cdn.pixabay.com/photo/2015/05/28/22/29/bicycle-788733_1280.jpg',
    review: 'Great bike. I totally recommend it :)',
    rating: 5,
    renter: 'Lili_001212'

  },
  {
    brand: 'Speed Racer',
    description: 'A fast bike for those who love speed.',
    user_id: killian.id,
    price: 20.0,
    availability_start_date: '2023-07-01',
    availability_end_date: '2023-09-30',
    photo_url: 'https://cdn.pixabay.com/photo/2013/07/13/13/46/bicycle-161524_1280.png',
    review:`not as fast as they say. It's a scam! Cars were faster!!`,
    rating: 2,
    renter: 'brain_damage123sh: 1: Syntax error: Unterminated quoted string'
  }
]

emmasbike = Bike.new(brand: 'Speed Racer', description: 'A fast bike for those who love speed.', user_id: emma.id, price: 20.0, availability_start_date: '2023-07-01', availability_end_date: '2023-09-30', photo_url: 'https://cdn.pixabay.com/photo/2016/11/23/15/38/augmented-reality-1853592_1280.jpg')
emmasbike.save!

bikes.each do |bike_attributes|
  Bike.create!(
    brand: bike_attributes[:brand],
    description: bike_attributes[:description],
    price: bike_attributes[:price],
    user: [killian, emma, alberto, maksym].sample,
    availability_start_date: '2023-07-01',
    availability_end_date: '2023-09-30',
    photo_url: 'https://cdn.pixabay.com/photo/2013/07/13/13/46/bicycle-161524_1280.png',
    review: bike_attributes[:review],
    rating: bike_attributes[:rating],
    renter: bike_attributes[:renter]
  )
end

puts "Bike seeds created: #{Bike.count} 🌱"
