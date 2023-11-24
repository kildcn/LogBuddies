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
    photo_url: 'https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Library-Sites-canyon-shared/default/dw74bec6dd/images/blog/mountain-bikes/welches-mtb-passt-zu-main.jpg?sw=1064&sfrm=jpg&q=80',
    review:'I almost died. It has no brakes',
    rating: 1,
    renter: 'Peter Griffin',
    },
    {
      brand: 'Like a Sir',
      description: 'You should not be scared of heigths to ride this vintage model',
      user_id: "2",
      price: 25,
      availability_start_date: '2023-04-01',
      availability_end_date: '2023-06-30',
      photo_url: 'https://images.newscientist.com/wp-content/uploads/2021/06/16163958/fhxx10_web.jpeg?width=900',
      review: 'This is bloody nice',
      rating: 5,
      renter: 'Lord Percyval Van Halen III',
      },
  {
    brand: 'Peacefull promenade',
    description: 'Perfect for city rides and daily commutes.',
    user_id: "2",
    price: 10.0,
    availability_start_date: '2023-04-01',
    availability_end_date: '2023-06-30',
    photo_url: 'https://cdn.pixabay.com/photo/2015/05/28/22/29/bicycle-788733_1280.jpg',
    review: 'Great bike. I totally recommend it :)',
    rating: 5,
    renter: 'Lili_001212',
  },
  {
    brand: 'Speed Racer',
    description: 'A fast bike for those who love speed.',
    user_id: killian.id,
    price: 20.0,
    availability_start_date: '2023-07-01',
    availability_end_date: '2023-09-30',
    photo_url: 'https://cdn.pixabay.com/photo/2013/07/13/13/46/bicycle-161524_1280.png',
    review: 'not thaat fast ',
    rating: 2,
    renter: 'brain_damage123',
  },
  {
    brand: 'Mono',
    description: 'A monocycle to practice your circus skills.',
    user_id: killian.id,
    price: 10.0,
    availability_start_date: '2023-07-01',
    availability_end_date: '2023-09-30',
    photo_url: 'https://i.otto.de/i/otto/737d4464-eb8b-5e2d-80e1-092635d46524?w=445&h=832',
    review: 'I trained with this and I got a job in the circus 10/10',
    rating: 5,
    renter: 'Pipo_the_Clown',
  },
  {
    brand: 'The beast',
    description: 'Improve your biking skills with this beauty.',
    user_id: killian.id,
    price: 11,
    availability_start_date: '2023-07-01',
    availability_end_date: '2023-09-30',
    photo_url: 'https://www.veloretti.com/_next/image?url=https%3A%2F%2Fimages.ctfassets.net%2Fqp8eahdr9bo6%2F4pKi5ydjcSMy7etScCjGLS%2Fedcebcf451c1d2da90805c1ab548c5b1%2FTricycle-Desert_Moss.png&w=1920&q=75',
    review: 'perfect for kids or very small people',
    rating: 5,
    renter: 'user_3422',
  },
  {
    brand: "Oli's fabulous bike",
    description: 'If it breaks you can fix it.',
    user_id: killian.id,
    price: 11,
    availability_start_date: '2023-07-01',
    availability_end_date: '2023-09-30',
    photo_url: 'https://i.ibb.co/Ws0V9mv/Olivierface.jpg',
    review: 'perfect for kids or very small people',
    rating: 5,
    renter: 'user_3422',
  },
  {
    brand: "The Lucasmobile",
    description: 'My bike is nice, be nice to my bike.',
    user_id: killian.id,
    price: 11,
    availability_start_date: '2023-07-01',
    availability_end_date: '2023-09-30',
    photo_url: 'https://i.ibb.co/VNy53qp/lucasface.jpg',
    review: 'perfect for kids or very small people',
    rating: 5,
    renter: 'user_3422',
  },
  {
    brand: "Pedro's mantra",
    description: 'Take the route, control your bike and enjoy the vieeeewwww.',
    user_id: killian.id,
    price: 11,
    availability_start_date: '2023-07-01',
    availability_end_date: '2023-09-30',
    photo_url: 'https://i.ibb.co/VNy53qp/lucasface.jpg',
    review: 'perfect for kids or very small people',
    rating: 5,
    renter: 'user_3422',
  },
  {
    brand: "Adamlicious",
    description: 'A nice bike to casually visit your parents in their chateau.',
    user_id: killian.id,
    price: 11,
    availability_start_date: '2023-07-01',
    availability_end_date: '2023-09-30',
    photo_url: 'https://i.ibb.co/FKPRx8N/adamface.jpg',
    review: 'perfect for kids or very small people',
    rating: 5,
    renter: 'user_3422',
  }
]

emmasbike = Bike.new(brand: 'VR', description: 'Enjoy a VR ride anytime, anywhere.', user_id: emma.id, price: 20.0, availability_start_date: '2023-07-01', availability_end_date: '2023-09-30', photo_url: 'https://cdn.pixabay.com/photo/2016/11/23/15/38/augmented-reality-1853592_1280.jpg',   review: 'meh',
  rating: 2,
  renter: 'troll33',)
emmasbike.save!

bikes.each do |bike_attributes|
  Bike.create!(
    brand: bike_attributes[:brand],
    description: bike_attributes[:description],
    price: bike_attributes[:price],
    user: [killian, emma, alberto, maksym].sample,
    availability_start_date: '2023-07-01',
    availability_end_date: '2023-09-30',
    photo_url: bike_attributes[:photo_url],
    rating: bike_attributes[:rating],
    renter: bike_attributes[:renter],
    review: bike_attributes[:review],
  )
end

puts "Bike seeds created: #{Bike.count} 🌱"
