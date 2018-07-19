# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Price.destroy_all
Fairepart.destroy_all


# ====///Pliant///========

fairepart = Fairepart.new(
  slug: "pliant5x7couleur",
  nom: "Carte pliante 5 x 7 couleur",
  pliant:true,
  couleur:true,
  verso:true,
  format:"5x7",
  image:"https://source.unsplash.com/800x800/"
  )
fairepart.save!

fairepart = Fairepart.new(
  slug: "pliant5x7nb",
  nom: "Carte pliante 5 x 7 noir-blanc",
  pliant:true,
  couleur:false,
  verso:true,
  format:"5x7",
  image:"https://source.unsplash.com/800x800/"
  )
fairepart.save!

fairepart = Fairepart.new(
  slug: "pliant4x5couleur",
  nom:  "Carte pliante 4.25 x 5.5 couleur",
  pliant:true,
  couleur:true,
  verso:true,
  format:"4.25x5.5",
  image:"https://source.unsplash.com/800x800/"
  )
fairepart.save!

fairepart = Fairepart.new(
  slug: "pliant4x5nb",
  nom: "Carte pliante 4.25 x 5.5 noir-blanc",
  pliant:true,
  couleur:false,
  verso:true,
  format:"4.25x5.5",
  image:"https://source.unsplash.com/800x800/"
  )
fairepart.save!


# ====///Non-pliant///========

fairepart = Fairepart.new(
  slug: "np5x7couleurrecto",
  nom: "Carte non-pliante 5 x 7 couleur recto",
  pliant:false,
  couleur:true,
  verso:false,
  format:"5x7",
  image:"https://source.unsplash.com/800x800/"
  )
fairepart.save!

fairepart = Fairepart.new(
  slug: "np5x7nbrecto",
  nom: "Carte non-pliante 5 x 7 noir-blanc recto",
  pliant:false,
  couleur:false,
  verso:false,
  format:"5x7",
  image:"https://source.unsplash.com/800x800/"
  )
fairepart.save!

fairepart = Fairepart.new(
  slug: "np5x7couleurrv",
  nom: "Carte non-pliante 5 x 7 couleur recto-recto",
  pliant:false,
  couleur:true,
  verso:true,
  format:"5x7",
  image:"https://source.unsplash.com/800x800/"
  )
fairepart.save!

fairepart = Fairepart.new(
  slug: "np5x7nbrv",
  nom: "Carte non-pliante 5 x 7 noir-blanc recto-recto",
  pliant:false,
  couleur:false,
  verso:true,
  format:"5x7",
  image:"https://source.unsplash.com/800x800/"
  )
fairepart.save!

fairepart = Fairepart.new(
  slug: "np4x5couleurrecto",
  nom: "Carte non-pliante 4.25 x 5.5 couleur recto",
  pliant:false,
  couleur:true,
  verso:false,
  format:"4.25x5.5",
  image:"https://source.unsplash.com/800x800/"
  )
fairepart.save!

fairepart = Fairepart.new(
  slug: "np4x5nbrecto",
  nom: "Carte non-pliante 4.25 x 5.5 noir-blanc recto",
  pliant:false,
  couleur:false,
  verso:false,
  format:"4.25x5.5",
  image:"https://source.unsplash.com/800x800/"
  )
fairepart.save!

fairepart = Fairepart.new(
  slug: "np4x5couleurrv",
  nom: "Carte non-pliante 4.25 x 5.5 couleur recto-recto",
  pliant:false,
  couleur:true,
  verso:true,
  format:"4.25x5.5",
  image:"https://source.unsplash.com/800x800/"
  )
fairepart.save!

fairepart = Fairepart.new(
  slug: "np4x5nbrv",
  nom: "Carte non-pliante 4.25 x 5.5 noir-blanc recto-recto",
  pliant:false,
  couleur:false,
  verso:true,
  format:"4.25x5.5",
  image:"https://source.unsplash.com/800x800/"
  )
fairepart.save!

# ====///Prix///========

fairepart = Fairepart.find_by(slug:"pliant5x7couleur")
my_hash = { 25 => 2.86, 50 => 2.47, 75 => 2.25, 100 => 2.08, 125 => 2.05, 150 => 1.82, 175 => 1.76, 200 => 1.59}
my_hash.each do |key, value|
price = Price.new(
  nombre: key,
  unite: value,
  fairepart_id: fairepart.id
  )
price.save!
end

fairepart = Fairepart.find_by(slug:"pliant5x7nb")
my_hash = { 25 => 2.21, 50 => 1.95, 75 => 1.86, 100 => 1.56, 125 => 1.53, 150 => 1.39, 175 => 1.37, 200 => 1.20}
my_hash.each do |key, value|
price = Price.new(
  nombre: key,
  unite: value,
  fairepart_id: fairepart.id
  )
price.save!
end

fairepart = Fairepart.find_by(slug:"pliant4x5couleur")
my_hash = { 25 => 2.26, 50 => 1.63, 75 => 1.55, 100 => 1.37, 125 => 1.35, 150 => 1.26, 175 => 1.25, 200 => 1.22}
my_hash.each do |key, value|
price = Price.new(
  nombre: key,
  unite: value,
  fairepart_id: fairepart.id
  )
price.save!
end

fairepart = Fairepart.find_by(slug:"pliant4x5nb")
my_hash = { 25 => 1.72, 50 => 1.30, 75 => 1.22, 100 => 1.17, 125 => 1.15, 150 => 1.13, 175 => 1.12, 200 => 1.02}
my_hash.each do |key, value|
price = Price.new(
  nombre: key,
  unite: value,
  fairepart_id: fairepart.id
  )
price.save!
end
