resource spacelift_blueprint "blueprint1" {
    name = "blueprint1"
    space = "root"
    state = "PUBLISHED"
    description = "testing"
    template = file("${path.module}/blueprint1.yaml")
}

resource spacelift_stack "tofustack" {
    name = "tofustack"
    description = "A stack for testing"
    terraform_version = "1.10.3"
    repository = "resources"
    branch = "main"
}