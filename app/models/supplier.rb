class Supplier < ApplicationRecord
  has_many :supplier_ingredients, inverse_of: :supplier
end