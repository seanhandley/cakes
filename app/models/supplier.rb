class Supplier < ApplicationRecord
  has_many :costs, inverse_of: :supplier
end