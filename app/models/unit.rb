class Unit < ApplicationRecord
  has_many :costs,              inverse_of: :unit
  has_many :recipe_ingredients, inverse_of: :unit
end