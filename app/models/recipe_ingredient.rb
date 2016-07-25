class RecipeIngredient < ApplicationRecord
  belongs_to :recipe,              inverse_of: :recipe_ingredients
  belongs_to :supplier_ingredient, inverse_of: :recipe_ingredients
  belongs_to :unit,                inverse_of: :recipe_ingredients

  def pence
    supplier_ingredient.pence_per_whole_unit * quantity
  end
end
