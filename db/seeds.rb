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


99.times do |n|
  cities = ["London", "San Francisco", "Gibraltar"]
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

City.create(name: "San Francisco", photo: "https://d2lm6fxwu08ot6.cloudfront.net/img-thumbs/960w/E3PVOJJPNW.jpg")
City.create(name: "London", photo: "https://d2lm6fxwu08ot6.cloudfront.net/img-thumbs/960w/Q5F4Y33RNK.jpg")
City.create(name: "Gibraltar", photo: "http://www.booknerja.com/media/129127/gibraltar5.jpg")

20.times do |n|

  paragraphs = FFaker::HipsterIpsum.paragraphs(5).join(" ")
  sentence = FFaker::HipsterIpsum.words(3).join(" ").titleize

  title = sentence
  body = paragraphs
  user_id = rand(1..100)
  city_id = rand(1..3)

  Entry.create(
            title: title,
            body: body,
            user_id: user_id,
            city_id: city_id
    )
end
