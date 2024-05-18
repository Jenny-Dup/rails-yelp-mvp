# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all if Rails.env.development?

Restaurant.create!(
  name: "Dishoom",
  address: "42 Electric Boulevard, London",
  phone_number: "+321 23 45 67 89",
  category: "chinese"
)

Restaurant.create!(
  name: "Pizza Paradise",
  address: "123 East street, London",
  phone_number: "+44 23 45 67 89",
  category: "italian"
)

Restaurant.create!(
  name: "The River Cafe",
  address: "Thames Wharf, London",
  phone_number: "+44 20 73 86 4200",
  category: "french"
)

Restaurant.create!(
  name: "Cocotte",
  address: "762 Fulham road, London",
  phone_number: "+44 78 24 51 3070",
  category: "french"
)

Restaurant.create!(
  name: "Sushi Samba",
  address: "1 Westminster street, London",
  phone_number: "+44 78 35 67 9000",
  category: "japanese"
)
