class InssCalculator
  def self.calculate_inss_discount(salary)

    total_discount = 0

    if salary <= 1045.00
      total_discount = salary * 0.075
    elsif salary <= 2089.60
      total_discount = 1045.00 * 0.075 + (salary - 1045.00) * 0.09
    elsif salary <= 3134.40
      total_discount = 1045.00 * 0.075 + (2089.60 - 1045.00) * 0.09 + (salary - 2089.60) * 0.12
    elsif salary <= 6101.06
      total_discount = 1045.00 * 0.075 + (2089.60 - 1045.00) * 0.09 + (3134.40 - 2089.60) * 0.12 + (salary - 3134.40) * 0.14
    else
      total_discount = 1045.00 * 0.075 + (2089.60 - 1045.00) * 0.09 + (3134.40 - 2089.60) * 0.12 + (salary - 3134.40) * 0.14
    end
    return total_discount.floor(2)
  end

end