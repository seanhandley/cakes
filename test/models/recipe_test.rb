require 'test_helper'

class TestRecipe < CleanTest
  def setup
    gram  = Unit.make!(:gram)
    whole = Unit.make!(:whole)
    cup   = Unit.make!(:cup)
    args = [
      {
        quantity: 200,
        unit: gram,
        pence: 50
      }, # 0.25 per gram
      {
        quantity: 2,
        unit: cup,
        pence: 500
      }, # 250 per cup
      {
        quantity: 1,
        unit: whole,
        pence: 25
      } # 25 per whole
    ]
    supplier_ingredients = args.map{|a| SupplierIngredient.make! a}
    args = [
      {
        supplier_ingredient: supplier_ingredients[0],
        unit: gram,
        quantity: 600
      }, # = 150
      {
        supplier_ingredient: supplier_ingredients[1],
        unit: cup,
        quantity: 0.25
      }, # => 62.5
      {
        supplier_ingredient: supplier_ingredients[2],
        unit: whole,
        quantity: 3
      } # => 75
    ]
    recipe_ingredients = args.map{|a| RecipeIngredient.make! a}
    @recipe = Recipe.make
    recipe_ingredients.each {|r| @recipe.recipe_ingredients <<  r}
    @recipe.save!
  end

  def test_total_pence
    assert_equal 287.5, @recipe.total_pence
  end
end