class SupplierIngredient < ApplicationRecord
  belongs_to :raw_ingredient,     inverse_of: :supplier_ingredients
  belongs_to :supplier,           inverse_of: :supplier_ingredients
  belongs_to :unit,               inverse_of: :supplier_ingredients
  has_many   :recipe_ingredients, inverse_of: :supplier_ingredient

  def pence_per_whole_unit
    pence / quantity
  end
end