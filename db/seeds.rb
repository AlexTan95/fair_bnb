# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = {}
user['password'] = 'asdf'

ActiveRecord::Base.transaction do
  20.times do 
    user['first_name'] = Faker::Name.first_name 
    user['last_name'] = Faker::Name.last_name
    user['email'] = Faker::Internet.email

    User.create(user)
  end
end 

# Seed Listings
listing = {}
uids = []
User.all.each { |u| uids << u.id }

ActiveRecord::Base.transaction do
  40.times do 
    listing['title'] = Faker::App.name
    listing['property_type'] = ["House", "Entire Floor", "Condominium", "Villa", "Townhouse", "Castle", "Treehouse", "Igloo", "Yurt", "Cave", "Chalet", "Hut", "Tent", "Other"].sample

    listing['no_of_bed'] = rand(0..5)
    listing['no_of_bathroom'] = rand(1..6)
    listing['max_guest'] = rand(1..10)

    listing['country'] = Faker::Address.country
    listing['address'] = Faker::Address.street_address
    listing['city'] = Faker::Address.city

    listing['price'] = rand(80..500)
    listing['description'] = Faker::Hipster.sentence

    listing['user_id'] = uids.sample
    
    Listing.create(listing)
  end
end