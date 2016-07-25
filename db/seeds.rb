# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

aldi       = Supplier.create! name: "Aldi"
sainsburys = Supplier.create! name: "Sainsburys"

cup   = Unit.create! name: "Cup"
gram  = Unit.create! name: "Gram"
whole = Unit.create! name: "Whole" 
tsp   = Unit.create! name: "Teaspoon"

flour           = RawIngredient.create! name: "Flour"
sugar           = RawIngredient.create! name: "Sugar"
eggs            = RawIngredient.create! name: "Eggs"
cocoa_powder    = RawIngredient.create! name: "Cocoa Powder"
flora           = RawIngredient.create! name: "Flora"
block_butter    = RawIngredient.create! name: "Block Butter"
vanilla_essence = RawIngredient.create! name: "Vanilla Essence"

SupplierIngredient.create! raw_ingredient: flour,           unit: cup,   pence: 20, quantity: 1,    supplier: aldi
SupplierIngredient.create! raw_ingredient: flour,           unit: gram,  pence: 10, quantity: 100,  supplier: aldi
SupplierIngredient.create! raw_ingredient: sugar,           unit: cup,   pence: 40, quantity: 1,    supplier: aldi
SupplierIngredient.create! raw_ingredient: sugar,           unit: gram,  pence: 20, quantity: 100,  supplier: aldi
SupplierIngredient.create! raw_ingredient: eggs,            unit: whole, pence: 25, quantity: 1,    supplier: aldi
SupplierIngredient.create! raw_ingredient: cocoa_powder,    unit: cup,   pence: 40, quantity: 0.25, supplier: sainsburys
SupplierIngredient.create! raw_ingredient: cocoa_powder,    unit: gram,  pence: 40, quantity: 15,   supplier: sainsburys
SupplierIngredient.create! raw_ingredient: flora,           unit: gram,  pence: 40, quantity: 100,  supplier: sainsburys
SupplierIngredient.create! raw_ingredient: block_butter,    unit: gram,  pence: 72, quantity: 100,  supplier: aldi
SupplierIngredient.create! raw_ingredient: vanilla_essence, unit: tsp,   pence: 10, quantity: 1,    supplier: sainsburys