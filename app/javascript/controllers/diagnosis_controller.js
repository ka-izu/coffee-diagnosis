
import { Controller } from "@hotwired/stimulus"

  export default class extends Controller {
  static targets = ["card", "submit"]
  static values = { current: Number, total: Number }

  next(event) {
    event.preventDefault()

    // 現在のカードを非表示
    this.cardTargets[this.currentValue].classList.add("hidden")

    // 次へ
    this.currentValue++

    // まだ次があれば表示
    if (this.currentValue < this.totalValue) {
      this.cardTargets[this.currentValue].classList.remove("hidden")
    } else {
      // 最後の質問なら送信ボタン表示
      this.submitTarget.classList.remove("hidden")
    }
  }
}
