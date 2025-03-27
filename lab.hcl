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
      extend    = 10
      showTimer = false
    }
    idle {
      enabled     = false
      timeout     = 0
      showWarning = false
    }
    controls {
      showStop = true
    }
  }
}
