import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  updateNavbar() {
    if (window.scrollY) {
      this.element.classList.add("navbar-transparent")
      this.element.classList.remove("navbar-white")
    } else {
      this.element.classList.add("navbar-white")
      this.element.classList.remove("navbar-transparent")
    }
  };
}
