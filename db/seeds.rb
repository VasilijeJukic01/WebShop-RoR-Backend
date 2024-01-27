# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# User seed
User.create!(name:  "Vaske",
             email: "vaske@testing.com",
             password:              "12345",
             admin: true,
             activated: true,
             password_confirmation: "12345")

# Category seed
["Electronics", "Books", "Clothing"].each do |category_name|
  Category.create!(name: category_name)
end

# Article seed
10.times do |i|
  Article.find_or_create_by!(name: "Article #{i}", price: i * 10, category_id: Category.pluck(:id).sample)
end

# Store seed
["Belgrade", "Novi Sad", "Nis"].each do |location|
  Store.find_or_create_by!(location: location)
end