class RecipeIngredient < ApplicationRecord
  belongs_to :recipe, inverse_of: :recipe_ingredients
  belongs_to :cost,   inverse_of: :recipe_ingredients
  belongs_to :unit,   inverse_of: :recipe_ingredients
end