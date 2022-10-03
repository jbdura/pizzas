# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Restaurant.destroy_all
# Pizza.destroy_all

puts '🌱 Seeding ...'

rest1 = Restaurant.create(name: Faker::Restaurant.name , address: Faker::Address.full_address)
rest2 = Restaurant.create(name: Faker::Restaurant.name , address: Faker::Address.full_address)
rest3 = Restaurant.create(name: Faker::Restaurant.name , address: Faker::Address.full_address)
rest4 = Restaurant.create(name: Faker::Restaurant.name , address: Faker::Address.full_address)
rest5 = Restaurant.create(name: Faker::Restaurant.name , address: Faker::Address.full_address)
rest6 = Restaurant.create(name: Faker::Restaurant.name , address: Faker::Address.full_address)
rest7 = Restaurant.create(name: Faker::Restaurant.name , address: Faker::Address.full_address)

############################################################################################################################

pizza1 = Pizza.create(name: "Cheese", ingredients: "Dough, Tomato sauce, cheese")
pizza2 = Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato sauce, cheese, pepperoni")
pizza3 = Pizza.create(name: "Chicken", ingredients: "Dough, Tomato sauce, cheese, chicken")
pizza4 = Pizza.create(name: "Hawaiian", ingredients: "Dough, pineapple, peas, cheese")
pizza5 = Pizza.create(name: "Veggie", ingredients: "Dough, Tomato sauce, cheese, mushrooms")
pizza6 = Pizza.create(name: "Beef", ingredients: "Dough, Tomato sauce, cheese, beef")
pizza7 = Pizza.create(name: "Deluxe", ingredients: "Dough, Tomato sauce, cheese, beef, chicken, mushrooms")

############################################################################################################################

rest_pizz1 = RestaurantPizza.create(pizza_id: 1, restaurant_id: 1, price: 10)
rest_pizz2 = RestaurantPizza.create(pizza_id: 2, restaurant_id: 1, price: 10)
rest_pizz3 = RestaurantPizza.create(pizza_id: 7, restaurant_id: 1, price: 15)

rest_pizz4 = RestaurantPizza.create(pizza_id: 6, restaurant_id: 2, price: 12)
rest_pizz5 = RestaurantPizza.create(pizza_id: 3, restaurant_id: 2, price: 14)
rest_pizz6 = RestaurantPizza.create(pizza_id: 7, restaurant_id: 2, price: 20)

rest_pizz7 = RestaurantPizza.create(pizza_id: 1, restaurant_id: 3, price: 8)
rest_pizz8 = RestaurantPizza.create(pizza_id: 4, restaurant_id: 3, price: 10)
rest_pizz9 = RestaurantPizza.create(pizza_id: 5, restaurant_id: 3, price: 10)

rest_pizz10 = RestaurantPizza.create(pizza_id: 1, restaurant_id: 4, price: 11)
rest_pizz11 = RestaurantPizza.create(pizza_id: 3, restaurant_id: 4, price: 12)
rest_pizz12 = RestaurantPizza.create(pizza_id: 7, restaurant_id: 4, price: 15)

rest_pizz13 = RestaurantPizza.create(pizza_id: 6, restaurant_id: 5, price: 6)
rest_pizz14 = RestaurantPizza.create(pizza_id: 3, restaurant_id: 5, price: 7)
rest_pizz15 = RestaurantPizza.create(pizza_id: 7, restaurant_id: 5, price: 10)

rest_pizz16 = RestaurantPizza.create(pizza_id: 1, restaurant_id: 6, price: 10)
rest_pizz17 = RestaurantPizza.create(pizza_id: 2, restaurant_id: 6, price: 12)
rest_pizz18 = RestaurantPizza.create(pizza_id: 5, restaurant_id: 6, price: 18)

rest_pizz19 = RestaurantPizza.create(pizza_id: 4, restaurant_id: 7, price: 11)
rest_pizz20 = RestaurantPizza.create(pizza_id: 5, restaurant_id: 7, price: 15)
rest_pizz21 = RestaurantPizza.create(pizza_id: 7, restaurant_id: 7, price: 25)

############################################################################################################################

puts '✅ Done seeding!'