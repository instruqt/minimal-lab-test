
resource "external_website" "docs" {
  title              = "Docs"
  url                = "https://docs.instruqt.com"
  open_in_new_window = true
}

resource "service" "vault" {
  title  = "Vault"
  target = resource.vm.sandbox
  scheme = "https"
  port   = 5432
  path   = "/vault"
}

resource "virtual_browser" "vbdocs" {
  title = "VB Docs"
  url   = "https://docs.instruqt.com"
  agent = "chrome"
}

resource "note" "note1" {
  file = "contents/note1.md"
}