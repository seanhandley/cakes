class Unit < ApplicationRecord
  has_many :supplier_ingredients, inverse_of: :unit
  has_many :recipe_ingredients,   inverse_of: :unit
end