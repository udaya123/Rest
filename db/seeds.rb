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
