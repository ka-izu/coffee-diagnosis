
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["card", "bar"]
  static values = { current: Number, total: Number }

  connect() {
    this.showCurrentCard()
    this.updateBar()
  }

  
  next(event) {
    event.preventDefault()
    if (this.currentValue < this.totalValue - 1) {
      this.currentValue++
      this.showCurrentCard()
      this.updateBar()
    } else {
      this.element.submit()
    }
  }

  showCurrentCard() {
    this.cardTargets.forEach((el, i) => {
      el.classList.toggle("hidden", i !== this.currentValue)
    })
  }

  updateBar() {
    const percent = ((this.currentValue + 1) / this.totalValue) * 100
    this.barTarget.style.width = percent + "%"
  }
}
