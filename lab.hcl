resource "lab" "main" {
  title       = "Minimal Lab"
  description = "For testing changing description only happy"

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
      showTimer = true
    }
    idle {
      enabled     = true
      timeout     = 5
      showWarning = true
    }
    controls {
      showStop = true
    }
  }
}
