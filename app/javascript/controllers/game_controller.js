import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="game"
export default class extends Controller {
  static targets = ["button", "joinedNotice", "joinedButtons"]

  static values = {
    id: String,
    token: String,
  }
  connect() {
  }

  join() {
    fetch(`/games/${this.idValue}/players`, {
      method: "POST",
      headers: {
        "X-CSRF-Token": this.tokenValue,
      }
    }).then(resp => {
      if (resp.status === 200) {
        this.buttonTarget.classList.add('d-none');
        this.joinedNoticeTarget.classList.remove('d-none');
        this.joinedButtonsTarget.classList.remove('d-none');
      } else {
        // games full....
      }
    })
  }
}
