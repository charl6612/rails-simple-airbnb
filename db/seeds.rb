

puts 'Cleaning database...'
Flat.destroy_all

puts 'Making database...'
10.times do
Flat.create!(
  name: "House from " + Faker::Artist.name,
  address: Faker::Address.street_address,
  description: Faker::Restaurant.description,
  price_per_night: rand(50..200),
  number_of_guests: rand(2..10),
)
end