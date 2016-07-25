class RawIngredient < ApplicationRecord
  has_many :supplier_ingredients, inverse_of: :raw_ingredient
end