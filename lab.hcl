resource "lab" "main" {
    title = "Minimal Lab New title"
    description = "For testing"

    layout "simple" {
        default = true
        source = resource.layout.simple

        instructions {
            panel = "instructions"
        }
    }

    content {
        chapter "introduction" {
            title = "Introduction"

            page "instructions" {
                source = resource.page.instructions
            }
        }
    }
}
