import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="user"
export default class extends Controller {
  static targets = ["input", "output", "form"]

  static values = { salary: String, discount: String }

  connect() {
    this.formTarget.hidden = true
    this.update()
  }

  initialize() {
    console.log('Initialized')
  }

  update() {

    let salary = this.inputTarget.value
    let outputValue = parseFloat(this.calculate_INSS(salary))

    if (this.inputTarget.value >= 10) {
      this.formTarget.hidden = false
      this.outputTarget.value = outputValue || 0
    } else {
      this.formTarget.hidden = true
    }

  }

  calculate_INSS(salary) {

    let total_discount = 0;

    if (salary <= 1045) {
      total_discount = salary * 0.075;
    } else if (salary <= 2089.6) {
      total_discount = 1045.00 * 0.075 + (salary - 1045.00) * 0.09
    } else if (salary <= 3134.4) {
      total_discount = 1045.00 * 0.075 + (2089.60 - 1045.00) * 0.09 + (salary - 2089.60) * 0.12
    } else if (salary <= 6101.06) {
      total_discount = 1045.00 * 0.075 + (2089.60 - 1045.00) * 0.09 + (3134.40 - 2089.60) * 0.12 + (salary - 3134.40) * 0.14
    } else {
      total_discount = 1045.00 * 0.075 + (2089.60 - 1045.00) * 0.09 + (3134.40 - 2089.60) * 0.12 + (6101.06 - 3134.40) * 0.14
    }

    return total_discount.toFixed(2);
  }

}


