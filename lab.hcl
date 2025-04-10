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

      page "instructions" {
        reference = resource.page.instructions
      }
    }
  }

  settings {
    theme = "modern-dark"
    timelimit {
      duration  = 15
      extend    = 0
      show_timer = true
    }
    idle {
      enabled     = true
      timeout     = 5
      show_warning = true
    }
    controls {
      show_stop = true
    }
  }
}
