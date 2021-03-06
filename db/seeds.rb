# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

 # Create Users
10.times do
  User.create!(
    name: Faker::FunnyName.name,
    email:  Faker::Internet.email,
    password:   'helloworld',
  )
end
users = User.all

# Create Wiki
100.times do
  wiki = Wiki.create!(
    user: users.sample,
    title: Faker::Seinfeld.character,
    body: Faker::Seinfeld.quote,
    private: false
  )
end

wikis = Wiki.all

# Create admin
admin = User.create!(
  name: 'adminUser',
  email: 'admin@example.com',
  password: 'password',
  role: 'admin'
)

# Create premium
premium = User.create!(
  name: 'premiumUser',
  email: 'premium@example.com',
  password: 'password',
  role: 'premium'
)


puts "Seed finished"
puts "#{Wiki.count} wikis created"
puts "#{User.count} users created"
