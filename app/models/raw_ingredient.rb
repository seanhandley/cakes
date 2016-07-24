class RawIngredient < ApplicationRecord
  has_many :costs, inverse_of: :raw_ingredient
end