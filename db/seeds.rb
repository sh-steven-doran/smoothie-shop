# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Destroying ingredients ❌🥴'
Ingredient.destroy_all

puts 'Creating some ingredients 🍓🥑'

25.times do 
  ingredient = [
    Faker::Food.fruits, 
    Faker::Food.ingredient, 
    Faker::Food.vegetables, 
    Faker::Food.spice, 
    Faker::Food.sushi, 
    Faker::Food.dish
  ].sample
  Ingredient.create(name: ingredient)
end

puts 'Destroying smoothies ❌🥴'
Smoothie.destroy_all

puts 'Creating some smoothies 🥛🍌'

10.times do 
  Smoothie.create(name: "The #{Faker::Name.first_name}")
end