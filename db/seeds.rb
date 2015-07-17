# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "brymac@gmail.com", password: "password", password_confirmation: "password", name: "Bryan MacDiarmid")

100.times do
  Product.create(name: Faker::Commerce.product_name, description: Faker::Company.catch_phrase, price_in_cents: (Faker::Commerce.price * 100).to_i)
end


# Product.create(name: "Mouse", description: "Use your laptop with this handy mouse", price_in_cents: 4000)
# Product.create(name: "Trackpad", description: "Great accuracy!", price_in_cents: 5000)
# Product.create(name: "Keyboard", description: "Wireless freedom with Bluetooth.  Live wirelessly!", price_in_cents: 5000)
# Product.create(name: "Monitor", description: "See clearly with this Retina display", price_in_cents: 70000)



