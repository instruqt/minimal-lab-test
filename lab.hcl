resource "lab" "main" {
  title       = "Minimal Lab test"
  description = "For testing changing description only happy test"

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
    theme = "original"
    timelimit {
      duration  = 23
      extend    = 0
      showTimer = true
    }
    idle {
      enabled     = true
      timeout     = 6
      showWarning = true
    }
    controls {
      showStop = true
    }
  }
}
