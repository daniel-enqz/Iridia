import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  updateNavbar() {
    if (window.scrollY) {
      this.element.classList.remove("navbar-transparent")
      this.element.classList.add("navbar-white")
    } else {
      this.element.classList.remove("navbar-white")
      this.element.classList.add("navbar-transparent")
    }
  };
}
