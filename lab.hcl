resource "lab" "main" {
  title       = "Minimal Lab Test"
  description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."

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
