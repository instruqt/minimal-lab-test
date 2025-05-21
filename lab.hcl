resource "lab" "main" {
  title       = "Wololo"
  description = "Maybe something here"

  layout "simple" {
    default   = true
    reference = resource.layout.simple

    instructions {
      panel = "instructions"
    }
  }

  content {
    chapter "introduction" {
      title = "Introduction"

      page "instructions2-1" {
        reference = resource.page.instructions
        title     = "Instructions2"
      }
    }
  }

  settings {
    theme = "modern_dark"
    timelimit {
      duration   = "20m"
      extend     = "0"
      show_timer = true
    }
    idle {
      enabled      = true
      timeout      = "20m"
      show_warning = true
    }
    controls {
      show_stop = true
    }
  }
}
