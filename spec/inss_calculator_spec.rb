require_relative '../lib/inss_calculator'

describe InssCalculator do

  describe 'Calculate INSS values' do
    it 'should calculate INSS TOTAL DISCOUNT correctly' do
        expect(InssCalculator.new(3000).get_inss_values[0]).to eq(281.63)
        expect(InssCalculator.new(5000).get_inss_values[0]).to eq(558.94)
        expect(InssCalculator.new(6000).get_inss_values[0]).to eq(698.94)
        expect(InssCalculator.new(1000).get_inss_values[0]).to eq(75.0)
        expect(InssCalculator.new(4000).get_inss_values[0]).to eq(418.94)
        expect(InssCalculator.new(10000).get_inss_values[0]).to eq(1258.94)
        expect(InssCalculator.new(6200).get_inss_values[0]).to eq(726.94)
    end

    it 'should calculate INSS SALARY BAND correctly' do
        expect(InssCalculator.new(3000).get_inss_values[1]).to eq(3)
        expect(InssCalculator.new(5000).get_inss_values[1]).to eq(4)
        expect(InssCalculator.new(6000).get_inss_values[1]).to eq(4)
        expect(InssCalculator.new(1000).get_inss_values[1]).to eq(1)
        expect(InssCalculator.new(4000).get_inss_values[1]).to eq(4)
        expect(InssCalculator.new(10000).get_inss_values[1]).to eq(4)
        expect(InssCalculator.new(6200).get_inss_values[1]).to eq(4)
        expect(InssCalculator.new(1400).get_inss_values[1]).to eq(2)
    end
  end
end
