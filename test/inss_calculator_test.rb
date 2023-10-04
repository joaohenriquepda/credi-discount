require 'test_helper'
require 'inss_calculator'

class InssCalculatorTest < ActiveSupport::TestCase
  test "should calculate INSS correctly" do
    assert_equal  281.63, InssCalculator.new(3000).get_inss_values[0]
    assert_equal  558.94, InssCalculator.new(5000).get_inss_values[0]
    assert_equal  698.94, InssCalculator.new(6000).get_inss_values[0]
    assert_equal  75.0, InssCalculator.new(1000).get_inss_values[0]
    assert_equal  418.94, InssCalculator.new(4000).get_inss_values[0]
    assert_equal  1258.94, InssCalculator.new(10000).get_inss_values[0]
    assert_equal  726.94, InssCalculator.new(6200).get_inss_values[0]
  end
end




