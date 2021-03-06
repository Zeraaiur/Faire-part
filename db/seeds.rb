# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Price.destroy_all
Pricesreponse.destroy_all
Fairepart.destroy_all
Reponse.destroy_all
Enveloppe.destroy_all

User.destroy_all

# ====///FAIREPARTS///========
# ====///Pliant///========

fairepart = Fairepart.new(
  slug: "pliant5x7couleur",
  nom: "Faireparts pliants, 5 x 7, couleur",
  pliant:true,
  couleur:true,
  verso:true,
  format:"5x7",
  )
fairepart.save!

fairepart = Fairepart.new(
  slug: "pliant5x7nb",
  nom: "Faireparts pliants, 5 x 7, noir-blanc",
  pliant:true,
  couleur:false,
  verso:true,
  format:"5x7",
  )
fairepart.save!
# ====///Non-pliant///========

fairepart = Fairepart.new(
  slug: "np5x7couleurrecto",
  nom: "Faireparts non-pliants, 5 x 7, couleur, recto",
  pliant:false,
  couleur:true,
  verso:false,
  format:"5x7",
  )
fairepart.save!

fairepart = Fairepart.new(
  slug: "np5x7nbrecto",
  nom: "Faireparts non-pliants, 5 x 7, noir-blanc, recto",
  pliant:false,
  couleur:false,
  verso:false,
  format:"5x7",
  )
fairepart.save!

fairepart = Fairepart.new(
  slug: "np5x7couleurrv",
  nom: "Faireparts non-pliants, 5 x 7, couleur, recto-verso",
  pliant:false,
  couleur:true,
  verso:true,
  format:"5x7",
  )
fairepart.save!

fairepart = Fairepart.new(
  slug: "np5x7nbrv",
  nom: "Faireparts non-pliants, 5 x 7, noir-blanc, recto-verso",
  pliant:false,
  couleur:false,
  verso:true,
  format:"5x7",
  )
fairepart.save!

# ====///RÉPONSES///========

reponse = Reponse.new(
  slug: "np4x5couleurrecto",
  nom: "Cartes réponses, 4.25 x 5.5, couleur, recto",
  couleur:true,
  verso:false,
  format:"4.25x5.5",
  )
reponse.save!

reponse = Reponse.new(
  slug: "np4x5nbrecto",
  nom: "Cartes réponses, 4.25 x 5.5, noir-blanc, recto",
  couleur:false,
  verso:false,
  format:"4.25x5.5",
  )
reponse.save!

reponse = Reponse.new(
  slug: "np4x5couleurrv",
  nom: "Cartes réponses, 4.25 x 5.5, couleur, recto-verso",
  couleur:true,
  verso:true,
  format:"4.25x5.5",
  )
reponse.save!

reponse = Reponse.new(
  slug: "np4x5nbrv",
  nom: "Cartes réponses, 4.25 x 5.5, noir-blanc, recto-verso",
  couleur:false,
  verso:true,
  format:"4.25x5.5",
  )
reponse.save!

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

fairepart = Fairepart.find_by(slug:"np5x7couleurrecto")
my_hash = { 25 => 1.40, 50 => 1.01, 75 => 0.77, 100 => 0.72, 125 => 0.69, 150 => 0.67, 175 => 0.66, 200 => 0.65}
my_hash.each do |key, value|
  price = Price.new(
    nombre: key,
    unite: value,
    fairepart_id: fairepart.id
    )
  price.save!
end

fairepart = Fairepart.find_by(slug:"np5x7nbrecto")
my_hash = { 25 => 1.00, 50 => 0.75, 75 => 0.67, 100 => 0.55, 125 => 0.53, 150 => 0.51, 175 => 0.50, 200 => 0.48}
my_hash.each do |key, value|
  price = Price.new(
    nombre: key,
    unite: value,
    fairepart_id: fairepart.id
    )
  price.save!
end

fairepart = Fairepart.find_by(slug:"np5x7couleurrv")
my_hash = { 25 => 1.87, 50 => 1.24, 75 => 1.16, 100 => 0.98, 125 => 0.96, 150 => 0.93, 175 => 0.92, 200 => 0.91}
my_hash.each do |key, value|
  price = Price.new(
    nombre: key,
    unite: value,
    fairepart_id: fairepart.id
    )
  price.save!
end

fairepart = Fairepart.find_by(slug:"np5x7nbrv")
my_hash = { 25 => 1.33, 50 => 0.91, 75 => 0.83, 100 => 0.78, 125 => 0.76, 150 => 0.74, 175 => 0.73, 200 => 0.72}
my_hash.each do |key, value|
  price = Price.new(
    nombre: key,
    unite: value,
    fairepart_id: fairepart.id
    )
  price.save!
end



reponse = Reponse.find_by(slug:"np4x5couleurrecto")
my_hash = { 25 => 1.18, 50 => 0.79, 75 => 0.70, 100 => 0.60, 125 => 0.50, 150 => 0.48, 175 => 0.47, 200 => 0.46}
my_hash.each do |key, value|
  pricesreponse = Pricesreponse.new(
    nombre: key,
    unite: value,
    reponse_id: reponse.id
    )
  pricesreponse.save!

end

reponse = Reponse.find_by(slug:"np4x5nbrecto")
my_hash = { 25 => 0.89, 50 => 0.59, 75 => 0.50, 100 => 0.46, 125 => 0.43, 150 => 0.37, 175 => 0.35, 200 => 0.34}
my_hash.each do |key, value|
  pricesreponse = Pricesreponse.new(
    nombre: key,
    unite: value,
    reponse_id: reponse.id
    )
  pricesreponse.save!
end

reponse = Reponse.find_by(slug:"np4x5couleurrv")
my_hash = { 25 => 1.45, 50 => 1.03, 75 => 0.77, 100 => 0.72, 125 => 0.70, 150 => 0.68, 175 => 0.66, 200 => 0.65}
my_hash.each do |key, value|
  pricesreponse = Pricesreponse.new(
    nombre: key,
    unite: value,
    reponse_id: reponse.id
    )
  pricesreponse.save!
end

reponse = Reponse.find_by(slug:"np4x5nbrv")
my_hash = { 25 => 1.05, 50 => 0.76, 75 => 0.67, 100 => 0.55, 125 => 0.53, 150 => 0.51, 175 => 0.50, 200 => 0.48}
my_hash.each do |key, value|
  pricesreponse = Pricesreponse.new(
    nombre: key,
    unite: value,
    reponse_id: reponse.id
    )
  pricesreponse.save!
end


# ====///Enveloppe///========
enveloppe = Enveloppe.new(
  prix: 0.1725,
  format: "4.25x5.5"
  )
enveloppe.save!

enveloppe = Enveloppe.new(
  prix: 0.207,
  format: "5x7"
  )
enveloppe.save!

# ========== USER

user = User.new(
  email: "david@prodelacopie.com",
  password: "123123",
  )
user.save!
