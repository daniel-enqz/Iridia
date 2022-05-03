# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# USERS POPULATION
default_password = "123456"
print "Populating Users"
5.times do |n|
  print "."
  User.create!(email: "user#{n}@user.com", password: default_password,
                          first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end
puts "."
puts "✅ 5 Users were created successfully"

# DONATIONS POPULATION
categories = ["Food", "Clothing", "Electronics", "Other"]
print "Creating Donations❤️"
20.times do |n|
  print "."
  user = User.all.sample
  Donation.create!(name: Faker::Commerce.product_name, owner: user, customer: user, category: categories.sample,
  description: Faker::Lorem.sentence(word_count: 10, supplemental: true) )
end
puts "."
puts "✅ 20 Donations were created successfully"

puts "For logging in you can either create an account or use...."
puts "user1@user.com | password: 123456"
