# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Delete galeries"
Galerie.destroy_all

puts "Creating galeries"


first_galery = Galerie.create!(name: "Balade poétique", description: "Une balade poétique dans la nature")
first_galery.photo.attach(io: File.open('app/assets/images/balade.jpg'), filename: 'balade.jpg')

second_galery = Galerie.create!(name: "Arbres et histoires", description: "arbres imaginaires et histoires diverses")
second_galery.photo.attach(io: File.open('app/assets/images/arbre.jpg'), filename: 'arbre.jpg')

third_galery = Galerie.create!(name: "Intérieurs chimériques", description: "Intérieurs et fées")
third_galery.photo.attach(io: File.open('app/assets/images/interieur.jpg'), filename: 'interieur.jpg')

fifth_galery = Galerie.create!(name: "Entre Terre et Pierres", description: "Sculptures sur différents thèmes et matières")
fifth_galery.photo.attach(io: File.open('app/assets/images/sculpture.jpg'), filename: 'sculpture.jpg')

fourth_galery = Galerie.create!(name: "Paysages et vagabondages", description: "Paysages marins, vagabondages dans des lieux divers")
fourth_galery.photo.attach(io: File.open('app/assets/images/vagabondage.jpg'), filename: 'vagabondage.jpg')


puts "Galeries done"
