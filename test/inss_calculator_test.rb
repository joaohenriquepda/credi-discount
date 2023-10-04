require 'test_helper'
require 'inss_calculator'

class InssCalculatorTest < ActiveSupport::TestCase
  test "should calculate INSS correctly" do
    assert_equal  281.63, InssCalculator.calculate_inss_discount(3000)
    assert_equal  558.94, InssCalculator.calculate_inss_discount(5000)
    assert_equal  698.94, InssCalculator.calculate_inss_discount(6000)
    assert_equal  75.0, InssCalculator.calculate_inss_discount(1000)
    assert_equal  418.94, InssCalculator.calculate_inss_discount(4000)
    assert_equal  1258.94, InssCalculator.calculate_inss_discount(10000)
    assert_equal  726.94, InssCalculator.calculate_inss_discount(6200)
  end
end




