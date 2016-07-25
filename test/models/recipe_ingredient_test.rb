require 'test_helper'

class TestRecipeIngredient < CleanTest
  def setup
    gram = Unit.make!(:gram)
    args = {
      quantity: 100,
      unit: gram,
      pence: 200
    }
    @supplier_ingredient = SupplierIngredient.make! args
    args = {
      supplier_ingredient: @supplier_ingredient,
      unit: gram,
      quantity: 500
    }
    @recipe_ingredient = RecipeIngredient.make! args
  end

  def test_pence
    assert_equal 1000, @recipe_ingredient.pence
  end
end