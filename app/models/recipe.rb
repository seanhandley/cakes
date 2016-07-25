class Recipe < ApplicationRecord
  has_many :recipe_ingredients, inverse_of: :recipe

  def total_pence
    recipe_ingredients.collect(&:pence).sum
  end
end