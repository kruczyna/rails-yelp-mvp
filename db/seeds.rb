# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Destroy all existing records to avoid duplication
Restaurant.destroy_all

# Create sample restaurants
restaurants = [
  { name: 'Sushi Place', address: '123 Tokyo St', phone_number: '123-456-7890', category: 'japanese' },
  { name: 'Pizza Heaven', address: '456 Rome Ave', phone_number: '098-765-4321', category: 'italian' },
  { name: 'Waffles & More', address: '789 Brussels Rd', phone_number: '555-123-4567', category: 'belgian' },
  { name: 'La Belle Vie', address: '321 Paris Blvd', phone_number: '321-654-9870', category: 'french' },
  { name: 'Dragon’s Delight', address: '987 Beijing Ln', phone_number: '111-222-3333', category: 'chinese' }
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

puts "Created #{Restaurant.count} restaurants."
