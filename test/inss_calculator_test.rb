require 'test_helper'
require 'inss_calculator'

class InssCalculatorTest < ActiveSupport::TestCase
  test "should calculate INSS correctly" do
    assert_equal  281.63, InssCalculator.calculate_inss_discount(3000)
    assert_equal  558.94, InssCalculator.calculate_inss_discount(5000)
  end
end




