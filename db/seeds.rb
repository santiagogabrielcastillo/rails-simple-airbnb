# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


price = (1..100).to_a
guests = (1..8).to_a

Flat.destroy_all

16.times do
  Flat.create!(
    name: Faker::Name.unique.name,
    address: Faker::Address.full_address,
    description: Faker::Quote.famous_last_words,
    price_per_night: price.sample,
    number_of_guests: guests.sample
  )
end