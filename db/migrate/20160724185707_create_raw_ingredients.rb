class CreateRawIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.string :name
    end

    create_table :raw_ingredients do |t|
      t.string :name
    end

    create_table :units do |t|
      t.string :name
    end

    create_table :supplier_ingredients do |t|
      t.integer  :raw_ingredient_id
      t.integer  :supplier_id
      t.integer  :unit_id
      t.float    :quantity
      t.integer  :pence
    end

    create_table :recipes do |t|
      t.string   :name
    end

    create_table :recipe_ingredients do |t|
      t.integer  :recipe_id
      t.integer  :supplier_ingredient_id
      t.float    :quantity
      t.integer  :unit_id
    end
  end
end
