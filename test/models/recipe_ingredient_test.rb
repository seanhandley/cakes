require 'test_helper'

class TestRecipeIngredient < CleanTest
  def setup
    gram = Unit.make!(:gram)
    @cup = Unit.make!(:cup)
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

  def test_unit_matches
    args = {
      supplier_ingredient: @supplier_ingredient,
      unit: @cup,
      quantity: 500
    }
    assert_raises ActiveRecord::RecordInvalid do
      @recipe_ingredient = RecipeIngredient.make! args
    end
  end
end