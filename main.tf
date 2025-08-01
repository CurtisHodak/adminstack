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
    terraform_workflow_tool = "OPEN_TOFU"
    terraform_version = "1.9.0"
    repository = "resources"
    branch = "main"
}

resource spacelift_stack "adminstack" {
    administrative = true
    enable_sensitive_outputs_upload = false
    enable_well_known_secret_masking = true
    github_action_deploy             = false
    terraform_smart_sanitization     = true
    name = "Adminstack"
    repository = "adminstack"
    branch = "main"
    terraform_workflow_tool = "OPEN_TOFU"
    terraform_version = "1.10.3"
}
