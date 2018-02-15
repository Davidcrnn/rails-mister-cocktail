# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")


# Cocktail.create(name: "Mojito")
# Cocktail.create(name: "Cuba Libre")
# Cocktail.create(name: "Gin Tonic")
# Cocktail.create(name: "Vodka Tonic")

# Dose.create(description: "4cl", cocktail_id:, restaurant_id:)
# Dose.create(description: "3cl", cocktail_id:, restaurant_id:)
# Dose.create(description: "2cl", cocktail_id:, restaurant_id:)
# Dose.create(description: "1cl", cocktail_id:, restaurant_id:)

# # require 'json'
# # require 'open-uri'

# # url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# # list_serialized = open(url).read
# # user = JSON.parse(list_serialized)

require ‘json’
require ‘open-uri’

Ingredient.destroy_all

url = “http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list”
list_serialized = open(url).read
list = JSON.parse(list_serialized)

list[“drinks”].each do |drink|
 Ingredient.create!(name: drink[“strIngredient1”])
end
