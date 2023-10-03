import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="user"
export default class extends Controller {
  connect() {
    console.log('Connected')
  }

  initialize() {
    console.log('Initialized')
  }

  greet() {
    const element = this.nameTarget
    const name = element
    alert(`Hello, ${name}!`)
    console.log("AQUI ----", this.nameTarget);
  }

}
