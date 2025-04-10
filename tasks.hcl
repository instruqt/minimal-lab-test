
resource "task" "first_task" {
  config {
    target = resource.container.workstation
  }
}
