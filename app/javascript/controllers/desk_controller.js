import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="desk"
export default class extends Controller {
  static values = {
    points: Number,
    correct: String,
  };

  connect() {
    // console.log("hello from desk controller")
    // console.log(this.pointsValue)
    // console.log(this.correctValue)
    // console.log(answers)
    const answers = document.querySelectorAll('.point-1round-orange');

    Array.from(answers).slice(0, this.pointsValue).forEach((answer) => {
      if (this.correctValue === true) {
        answer.classList.add('flash');
      }
    });
  }
}
