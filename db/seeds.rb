# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: "696969696",
    category: "french"
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: "121213125",
    category: "french"
  },
   {
    name:         'Pizaza East',
    address:      '56A Shored6itch High St, London E1 6PQ',
    phone_number: "1212134125",
    category: "french"
  },
   {
    name:         'Pizz1a East',
    address:      '56A Shore5ditch High St, London E1 6PQ',
    phone_number: "1212131525",
    category: "french"
  },
   {
    name:         'Pizz3a East',
    address:      '56A Shor4editch High St, London E1 6PQ',
    phone_number: "1212131625",
    category:     "italian"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
reviews_attributes = [
{
  content: "its great",
  rating: 4,
  restaurant_id: 1
},
{
  content: "its great no it sucks loool",
  rating: 3,
  restaurant_id: 1
}
]
Review.create!(reviews_attributes)
