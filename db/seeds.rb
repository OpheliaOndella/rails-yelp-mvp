# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Creating restaurants...'
nicoletta = { name: 'Nicoletta', address: '21 rue bonnenfant, 78100', category: 'italian' }
wagon_bleue = { name: 'Wagon bleue', address: '7 rue boursault,75008', category: 'french' }
fuxia = { name: 'Fuxia', address: '40 rue de la republique, 78100', category: 'italian' }
surpriz = { name: 'Surpriz', address: '110 Rue Oberkampf, 75011', category: 'deutsh' }
marquises = { name: 'Marquises', address: '145 Rue Oberkampf, 75011', category: 'french' }
[nicoletta, wagon_bleue, fuxia, surpriz, marquises].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
