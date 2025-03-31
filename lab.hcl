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
      page "untitled-page-1-renamed" {
        title     = "Untitled page 1 renamed"
        reference = resource.page.untitled-page-1
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
