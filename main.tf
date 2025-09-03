resource spacelift_blueprint "blueprint1" {
    name = "blueprint1"
    space = "root"
    state = "PUBLISHED"
    description = "testing"
    template = file("${path.module}/blueprint1.yaml")
}

resource spacelift_stack "tofustack" {
    name = "tofustack1"
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


resource "spacelift_space" "space_a" {
  name             = "SpaceA"
  parent_space_id  = "root"        # make it a child of root
  description      = "App team A"
  inherit_entities = true          # optional, inherit resources from parent
}

resource "spacelift_stack" "admin_space_a" {
  administrative          = true
  name                    = "Admin: SpaceA"
  repository              = "adminstack"
  branch                  = "main"
  project_root            = "SpaceA"     # folder in your repo
  terraform_workflow_tool = "OPEN_TOFU"
  terraform_version       = "1.10.5"
  space_id                = spacelift_space.space_a.id
}


resource "spacelift_space" "space_b" {
  name             = "SpaceB"
  parent_space_id  = "root"
  description      = "App team B"
  inherit_entities = true
}

resource "spacelift_stack" "admin_space_b" {
  administrative          = true
  name                    = "Admin: SpaceB"
  repository              = "adminstack"
  branch                  = "main"
  project_root            = "SpaceB"     # folder in your repo
  terraform_workflow_tool = "OPEN_TOFU"
  terraform_version       = "1.10.5"
  space_id                = spacelift_space.space_b.id
}

resource "spacelift_module" "s3testmodule3" {
  name               = "s3testmodule3"
  branch             = "main"
  description        = "Infra terraform module"
  repository         = "s3testmodule"
}

resource "spacelift_aws_integration_attachment" "module_rw" {
  integration_id = "01JT3NCFCXENF9A2J3EV5C2KS6"
  module_id      = spacelift_module.s3test.id
  read           = true
  write          = true
}