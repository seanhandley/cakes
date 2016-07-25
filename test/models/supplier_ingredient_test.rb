require 'test_helper'

class TestSupplierIngredient < CleanTest
  def setup
    args = {
      quantity: 100,
      unit: Unit.make!(:gram),
      pence: 100
    }
    @supplier_ingredient = SupplierIngredient.make! args
  end

  def test_pence_per_whole_unit
    assert_equal 1, @supplier_ingredient.pence_per_whole_unit
  end
end