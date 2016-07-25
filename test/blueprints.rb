require 'machinist/active_record'

Supplier.blueprint do
  name { Faker::Company.name }
end

RawIngredient.blueprint do
  name { Faker::Lorem.word }
end

units = [:cup, :gram, :whole, :teaspoon]
units.each do |i|
  Unit.blueprint(i) do
    name { i.to_s }
  end
end

Unit.blueprint do
  name { units.sample }
end

SupplierIngredient.blueprint do
  raw_ingredient { RawIngredient.make }
  supplier       { Supplier.make      }
  unit           { Unit.make          }
  quantity       { rand(1..2000)      }
  pence          { rand(20..4000)     }
end
