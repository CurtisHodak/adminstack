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
    terraform_version = "1.10.3"
    repository = "resources"
    branch = "main"
}

resource spacelift_stack "adminstack" {
  name = "Adminstack"
  space = "root"  
  terraform_workflow_tool = "OPEN_TOFU"
  terraform_version = "1.9.0"
  repository = "adminstack"
} 

import {
    to = "spacelift_stack.adminstack"
    from = "adminstack"
}