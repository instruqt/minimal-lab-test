resource "lab" "main" {
    title = "Minimal Lab New title 2"
    description = "For testing"

    layout "simple" {
        default = true
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
}
