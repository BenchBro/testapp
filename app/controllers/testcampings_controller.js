import { Controller } from "stimulus"
export default class extends Controller {
  static targets = [ "completed" ]
  toggle(event) {
    let formData = new FormData()
    formData.append( "testcampings[completed]", this.completedTarget.checked);
    fetch(this.data.get("update-url"), {
      body: formData,
      method: 'PATCH',
      credentials: "include",
      dataType: "script",
      headers: {
                    "X-CSRF-Token": getMetaValue(csrf-token")
      }
    }
  }
}
