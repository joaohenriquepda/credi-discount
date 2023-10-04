# Model for calculate INSS values
class InssCalculator
  def initialize(salary)
    @total_discount = 0
    @salary_band = 0

    if salary <= 1045.00
      @total_discount = salary * 0.075
      @salary_band = 1
    elsif salary <= 2089.60
      @total_discount = 1045.00 * 0.075 + (salary - 1045.00) * 0.09
      @salary_band = 2
    elsif salary <= 3134.40
      @total_discount = 1045.00 * 0.075 + (2089.60 - 1045.00) * 0.09 + (salary - 2089.60) * 0.12
      @salary_band = 3
    elsif salary <= 6101.06
      @total_discount = 1045.00 * 0.075 + (2089.60 - 1045.00) * 0.09 + (3134.40 - 2089.60) * 0.12 + (salary - 3134.40) * 0.14
      @salary_band = 4
    else
      @total_discount = 1045.00 * 0.075 + (2089.60 - 1045.00) * 0.09 + (3134.40 - 2089.60) * 0.12 + (salary - 3134.40) * 0.14
      @salary_band = 4
    end
  end

  def inss_values
    [@total_discount.floor(2), @salary_band]
  end
end
