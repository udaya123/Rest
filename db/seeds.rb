# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_emails = ["ram@gmail.com", "udaya@gmail.com", "vasu@gmail.com", "adee@gmail.com", "abhie@gmail.com"]
user_passwords = []
user_names = ["ram", "udaya", "vasu", "adee", "abhie"]
user_roles = []
users = []
(0..4).each do |i|
users << User.create( email: user_emails[i],
password: 'password',
Name: user_names[i],
Role: 'owner' )
end

categories = ["Fast Food", "Chinese", "Thai", "American", "Italian"]
categories_description = ["Go whenever feeling lazy to cook", "Only for Restaurants"]
(0..4).each do |i|
  categories << Category.create(  :name => categories[i],
                    :description => categories_description[i])
end

restaurant_names = ["Mc Donalds", "China Hut", "Gumrai", "SweetTomatoes", "Olive Garden"]
restaurant_addresses = ["321 Milwakee ave. Chicago, IL", "334 wells st. Lisle, IL", "534 Geneva blvd. Aurora, IL", "900 Algonquin Rd. Arlington Heights, IL", "345 north st. Naperville, IL"]
restaurant_phone_numbers = ["235-457-5645", "234-487-5574", "658-457-5555", "356-783-7848", "754-458-4895"]
restaurant_category_ids = [1, 2, 3, 4, 5]
restaurants = []
(0..4).each do |i|
  restaurants << Restaurant.create( Name: restaurant_names[i], 
                      Address: restaurant_addresses[i],
                      Phonenumber: restaurant_phone_numbers[i],
                      category_id: restaurant_category_ids[i])
end

users.each_with_index do |user, index|
  user.restaurants << restaurants[index]
end

