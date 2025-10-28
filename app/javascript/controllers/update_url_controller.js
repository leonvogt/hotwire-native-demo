import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  update() {
    let url = new URL(window.location)
    url.searchParams.set("foo", "bar")
    window.history.replaceState(history.state, "", url)
  }
}
