class Recipe < ApplicationRecord
  has_many :recipe_ingredients, inverse_of: :recipe
end