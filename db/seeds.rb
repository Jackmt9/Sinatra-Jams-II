Artist.destroy_all
Instrument.destroy_all
Player.destroy_all

10.times do
  Artist.create(name: Faker::Name.name, age: rand(1..100), bio: Faker::Hipster.sentence)
end

5.times do
  Instrument.create(name: Faker::Music.instrument, brand: Faker::Company.name)
end

10.times do
  new_artist = Artist.create(name: Faker::Name.name, age: rand(1..100), bio: Faker::Hipster.sentence)
  new_instrument = Instrument.create(name: Faker::Music.instrument, brand: Faker::Company.name)
  Player.create(artist_id: new_artist.id, instrument_id: new_instrument.id)
end

puts "File has been seeded! 🍀"
