# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating flats...'
flats_attributes = [
  {
    name: 'Light Flat Tokyo',
    address: '1 Gardens Tokyo W9 1DT',
    description: 'Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3
  },
  {
    name: 'Tiny Flat in Paris',
    address: 'Avenue de la République',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 1555,
    number_of_guests: 1
  },
  {
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3
  },
  {
    name: ' Spacious Flat Nantes',
    address: '6 rue de l indre',
    description: 'A living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 6
  },
  {
    name: 'Light Flat Barcelona',
    address: 'Remblas',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure amet, aut',
    price_per_night: 55,
    number_of_guests: 9
  },
  {
    name: 'Spacious Garden Flat Istanbul',
    address: 'Unknown streer',
    description: '1 open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 5,
    number_of_guests: 90
  }
]
Flat.create!(flats_attributes)
puts 'Finished!'
