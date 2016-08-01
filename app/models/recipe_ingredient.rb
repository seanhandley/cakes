class RecipeIngredient < ApplicationRecord
  belongs_to :recipe,              inverse_of: :recipe_ingredients
  belongs_to :supplier_ingredient, inverse_of: :recipe_ingredients
  belongs_to :unit,                inverse_of: :recipe_ingredients

  validate :unit_types_match

  def pence
    supplier_ingredient.pence_per_whole_unit * quantity
  end

  private

  def unit_types_match
    if unit_id != supplier_ingredient.unit_id
      @errors.add(:unit, "doesn't match supplier ingredient unit (#{supplier_ingredient.unit.name})")
    end
  end
end
