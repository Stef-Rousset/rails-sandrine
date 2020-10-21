# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Delete galleries"
Gallery.destroy_all

puts "Creating galleries"


first_gallery = Gallery.create!(name: 'Balade poétique', description: 'Fées, anges, troubadours d’un soir. Air de luth, de flûte, chant de bateaux.
  Villages du bout du monde et d’ici. Châteaux de seigneur de la ville, de pacotille. Collines et routes serpentines.
  Bienvenue en des temps lointains où se perdre en chemin.')
first_gallery.photo.attach(io: File.open('app/assets/images/balade.jpg'), filename: 'balade.jpg')

second_gallery = Gallery.create!(name: "Arbres et histoires", description: "Arbre fantaisiste, majestueux, éclatant, lumineux. Arbre-refuge, compagnon de jeu, arbre des amoureux.
  Arbre à oiseaux, arbre-nourricier, arbre pour se reposer. Il est le témoin du temps qui passe, le gardien des secrets oubliés.")
second_gallery.photo.attach(io: File.open('app/assets/images/arbre.jpg'), filename: 'arbre.jpg')

third_gallery = Gallery.create!(name: "Intérieurs chimériques", description: "Un songe, un rêve, une ombre, une présence, une trace, une apparition, un guerrier…
  Sont-ils le fruit d’une imagination trop fertile, habitent-ils  nos intérieurs ou se sont-ils perdus dans le décor d’une scène, dans le décor de la toile ? Mystère.")
third_gallery.photo.attach(io: File.open('app/assets/images/interieur.jpg'), filename: 'interieur.jpg')

fourth_gallery = Gallery.create!(name: "Paysages et vagabondages", description: "Drapeaux multicolores virevoltant, cabanes endormies, eaux miroitantes, vent qui souffle dans les voiles, qui souffle sur les ailes avant de mourir en découvrant la ville.
  Reflets de paysages connus, impressions de déjà vu. Perdons-nous pour mieux les découvrir.")
fourth_gallery.photo.attach(io: File.open('app/assets/images/vagabondage.jpg'), filename: 'vagabondage.jpg')

fifth_gallery = Gallery.create!(name: "Entre Terre et Pierres", description: "Un sourire, un regard, une moue, un froissement, une pose, une posture, une expression, un détail qui dit tout, un peu de finesse et de délicatesse et au travers : un brin de vie.")
fifth_gallery.photo.attach(io: File.open('app/assets/images/sculpture.jpg'), filename: 'sculpture.jpg')

puts "Galleries done"

puts "Delete art_pieces"
ArtPiece.destroy_all
puts "Creating art_pieces"
art_piece_one = ArtPiece.create!(title: "Le champ des bateaux", dimension: "40 × 40", year: 2016, gallery: first_gallery, description: "Acrylique")
art_piece_one.photos.attach(io: File.open('app/assets/images/chant.jpg'), filename: 'chant.jpg')

art_piece_two = ArtPiece.create!(title: "La cueillette", dimension: "60 × 60", year: 2016, gallery: first_gallery, description: "Acrylique")
art_piece_two.photos.attach(io: File.open('app/assets/images/cueillette.jpg'), filename: 'cueillette.jpg')

art_piece_three = ArtPiece.create!(title: "Le village", dimension: "22 × 33", year: 2018, gallery: first_gallery, description: "Acrylique")
art_piece_three.photos.attach(io: File.open('app/assets/images/village.jpg'), filename: 'village.jpg')


puts "art_pieces done"
