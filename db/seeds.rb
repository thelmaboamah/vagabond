# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(first_name:  "Thelma",
						 last_name: "Boamah",
             email: "thelma.boamah@gmail.com",
             current_city: "San Francisco",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

cities = ["London", "San Francisco", "Gibraltar"]

99.times do |n|
  first_name  = FFaker::Name.first_name
  last_name = FFaker::Name.last_name
  current_city = cities.sample
  email = FFaker::Internet.email
  password = "password"
  User.create!(first_name:  first_name,
               last_name: last_name,
               email: email,
               current_city: current_city,
               password:              password,
               password_confirmation: password)
end