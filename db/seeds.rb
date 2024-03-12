# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


User.destroy_all


user1 = User.create!(email: 'toto@toto.fr', password: 'toto123')
product1 = user1.products.create!(title: 'Lightweight Steal Hat', price: 9.99, published: true)
product2 = user1.products.create!(title: 'Ergonomic ALuminium Lamp', price: 100.00, published: false)

puts "Created a new user: #{user1.email}"
puts "Created a new brand product: #{product1.title}"
puts "Created a new brand product: #{product2.title}"

user2 = User.create!(email: 'tata@tata.com', password: 'toto123')
product3 = user2.products.create!(title: 'Durable Plastic Car', price: 40.00, published: true)
product4 = user2.products.create!(title: 'Ergonomic Leather Shirt', price: 20.00, published: false)

puts "Created a new user: #{user2.email}"
puts "Created a new brand product: #{product3.title}"
puts "Created a new brand product: #{product4.title}"

user3 = User.create!(email: 'jordan@torp.io', password: 'toto123')
product5 = user3.products.create!(title: 'Incredible Paper Hat', price: 10.00, published: true)
product6 = user3.products.create!(title: 'Sleek Concrete Pants', price: 12.00, published: false)

puts "Created a new user: #{user3.email}"
puts "Created a new brand product: #{product5.title}"
puts "Created a new brand product: #{product6.title}"

user4 = User.create!(email: Faker::Internet.email, password: Faker::Internet.password)
product7 = user4.products.create!(title: Faker::Commerce.product_name, price: Faker::Commerce.price, published: true)
product8 = user4.products.create!(title: Faker::Commerce.product_name, price: Faker::Commerce.price, published: false)

puts "Created a new user: #{user4.email}"
puts "Created a new brand product: #{product7.title}"
puts "Created a new brand product: #{product8.title}"




