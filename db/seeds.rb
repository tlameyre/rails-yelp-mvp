# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'faker'

puts 'Deleting all the Occurences of Restaurants'
Restaurant.destroy_all
puts 'Finished'

puts 'Deleting all the Occurences of Review'
Review.destroy_all
puts 'Finished'

puts 'Creating 5 restaurants'
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: ['🇨🇳 chinese', '🇮🇹 italian', '🇫🇷 french', '🇯🇵 japanese', '🇧🇪 belgian'].sample
  )
  restaurant.save!
end
