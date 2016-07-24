class Cost < ApplicationRecord
  belongs_to :raw_ingredient, inverse_of: :costs
  belongs_to :supplier,       inverse_of: :costs
  belongs_to :unit,           inverse_of: :costs
end