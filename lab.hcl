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

      page "instructions3" {
        reference = resource.page.instructions
        title     = "Instructions3"
      }
      page "instructions4" {
        title     = "Instructions4"
        reference = resource.page.instructions
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
