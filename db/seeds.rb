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


first_galery = Galerie.create!(name: "Balade poétique", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam.
  Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat.
  Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue.")
first_galery.photo.attach(io: File.open('app/assets/images/balade.jpg'), filename: 'balade.jpg')

second_galery = Galerie.create!(name: "Arbres et histoires", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam.
  Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat.
  Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue.")
second_galery.photo.attach(io: File.open('app/assets/images/arbre.jpg'), filename: 'arbre.jpg')

third_galery = Galerie.create!(name: "Intérieurs chimériques", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam.
  Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat.
  Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue.")
third_galery.photo.attach(io: File.open('app/assets/images/interieur.jpg'), filename: 'interieur.jpg')

fourth_galery = Galerie.create!(name: "Paysages et vagabondages", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam.
  Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat.
  Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue.")
fourth_galery.photo.attach(io: File.open('app/assets/images/vagabondage.jpg'), filename: 'vagabondage.jpg')

fifth_galery = Galerie.create!(name: "Entre Terre et Pierres", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam.
  Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat.
  Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue.")
fifth_galery.photo.attach(io: File.open('app/assets/images/sculpture.jpg'), filename: 'sculpture.jpg')

puts "Galeries done"

puts "Delete art_pieces"
ArtPiece.destroy_all
puts "Creating art_pieces"
art_piece_one = ArtPiece.create!(title: "Le champ des bateaux", description: "40 × 40", year: 2016, galerie: first_galery)
art_piece_one.photo.attach(io: File.open('app/assets/images/chant.jpg'), filename: 'chant.jpg')

art_piece_two = ArtPiece.create!(title: "La cueillette", description: "60 × 60", year: 2016, galerie: first_galery)
art_piece_two.photo.attach(io: File.open('app/assets/images/cueillette.jpg'), filename: 'cueillette.jpg')

art_piece_three = ArtPiece.create!(title: "Le village", description: "22 × 33", year: 2018, galerie: first_galery)
art_piece_three.photo.attach(io: File.open('app/assets/images/village.jpg'), filename: 'village.jpg')


puts "art_pieces done"
