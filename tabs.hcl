resource "note" "note1" {
  title = "Note 1"
  file  = "contents/note1.md"
}
resource "terminal" "example" {
  target           = resource.container.workstation
  shell            = ""
  user             = ""
  group            = ""
  workingDirectory = ""
  list             = []
}
