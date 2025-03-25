
resource "task" "first_task" {
  config {
    target = resource.vm.sandbox
  }
}
