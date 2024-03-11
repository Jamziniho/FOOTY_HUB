import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="profile"
export default class extends Controller {
  static targets = ["submit", "input", "edit"]

  static values = {
    token: String
  }

  connect() {
  }

  editMode(e) {
    e.preventDefault();
    e.target.classList.add('d-none');
    this.inputTargets.forEach((input) => {
      input.classList.add('editable');
    });
    this.submitTarget.classList.remove('d-none');
  }

  submit(e) {
    e.preventDefault();
    fetch('profile', {
      method: "PATCH",
      headers: {
        "X-CSRF-Token": this.tokenValue,
      },
      body: new FormData(e.target)
    }).then(resp => resp.json()).then((data) => {
      const user = data.user;
      this.inputTargets[0].value = user["first_name"];
      this.inputTargets[1].value = user["last_name"];
      this.inputTargets[2].value = user["preferred_position"];
      this.inputTargets[3].value = user["email"];
    })
    this.inputTargets.forEach((input) => {
      input.classList.remove('editable');
    });
    this.submitTarget.classList.add('d-none');
    this.editTarget.classList.remove('d-none');
  }
}
