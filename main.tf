# resource "spacelift_blueprint" "blueprint1" {
#   name        = "blueprint1"
#   space       = "root"
#   state       = "PUBLISHED"
#   description = "testing"
#   template    = file("${path.module}/blueprint1.yaml")
# }

# resource "spacelift_stack" "tofustack" {
#   name                    = "tofustack1"
#   description             = "A stack for testing"
#   terraform_workflow_tool = "OPEN_TOFU"
#   terraform_version       = "1.9.0"
#   repository              = "resources"
#   branch                  = "main"
# }

resource "spacelift_stack" "adminstack" {
  administrative                   = true
  enable_sensitive_outputs_upload  = false
  enable_well_known_secret_masking = true
  github_action_deploy             = false
  terraform_smart_sanitization     = true
  name                             = "Adminstack"
  repository                       = "adminstack"
  branch                           = "main"
  terraform_workflow_tool          = "OPEN_TOFU"
  terraform_version                = "1.10.3"
}


# resource "spacelift_space" "space_a" {
#   name             = "SpaceA"
#   parent_space_id  = "root" # make it a child of root
#   description      = "App team A"
#   inherit_entities = true # optional, inherit resources from parent
# }

# resource "spacelift_stack" "admin_space_a" {
#   administrative          = true
#   name                    = "Admin: SpaceA"
#   repository              = "adminstack"
#   branch                  = "main"
#   project_root            = "SpaceA" # folder in your repo
#   terraform_workflow_tool = "OPEN_TOFU"
#   terraform_version       = "1.10.5"
#   space_id                = spacelift_space.space_a.id
# }


# resource "spacelift_space" "space_b" {
#   name             = "SpaceB"
#   parent_space_id  = "root"
#   description      = "App team B"
#   inherit_entities = true
# }

# resource "spacelift_stack" "admin_space_b" {
#   administrative          = true
#   name                    = "Admin: SpaceB"
#   repository              = "adminstack"
#   branch                  = "main"
#   project_root            = "SpaceB" # folder in your repo
#   terraform_workflow_tool = "OPEN_TOFU"
#   terraform_version       = "1.10.5"
#   space_id                = spacelift_space.space_b.id
# }

# resource "spacelift_module" "s3testmodule3" {
#   name        = "s3testmodule3"
#   branch      = "main"
#   description = "Infra terraform module"
#   repository  = "s3testmodule"
# }

# resource "spacelift_aws_integration_attachment" "module_rw" {
#   integration_id = "01JT3NCFCXENF9A2J3EV5C2KS6"
#   module_id      = spacelift_module.s3testmodule3.id
#   read           = true
#   write          = true
# }

# resource "spacelift_role" "readonly" {
#   name        = "ReadOnly Role"
#   description = "A role that can read Space resources and confirm runs"
#   actions = [
#     "RUN_TRIGGER",
#     "RUN_TRIGGER_WITH_CUSTOM_RUNTIME_CONFIG",
#     "RUN_CONFIRM",
#     "RUN_DISCARD",
#     "RUN_REVIEW",
#     "RUN_COMMENT",
#     "RUN_TARGETED_REPLAN",
#     "RUN_PROMOTE",
#     "RUN_PRIORITIZE_SET",
#     "RUN_RETRY",
#     "RUN_RETRY_BLOCKING",
#     "RUN_CANCEL",
#     "RUN_CANCEL_BLOCKING",
#     "RUN_PROPOSE_LOCAL_WORKSPACE",
#     "RUN_PROPOSE_WITH_OVERRIDES",
#     "RUN_STOP",
#     "RUN_STOP_BLOCKING",
#     "TASK_CREATE",
#     "STACK_CREATE",
#     "STACK_DELETE",
#     "STACK_DISABLE",
#     "STACK_LOCK",
#     "STACK_UNLOCK",
#     "STACK_UNLOCK_FORCE",
#     "STACK_SET_CURRENT_COMMIT",
#     "STACK_SYNC_COMMIT",
#     "STACK_DELETE_CONFIG",
#     "STACK_UPDATE",
#     "STACK_SET_STAR",
#     "STACK_ADD_CONFIG",
#     "STACK_UPLOAD_LOCAL_WORKSPACE",
#     "STACK_MANAGED_STATE_IMPORT",
#     "STACK_RESLUG",
#     "STACK_MANAGED_STATE_ROLLBACK",
#     "STACK_ENABLE",
#     "STACK_MANAGE"
#   ]
# }

resource "spacelift_api_key" "test1" { 
  name        = "Test API Key 1"
} 

resource "spacelift_space" "development" {
  name = "development"

  # Every account has a root space that serves as the root for the space tree.
  # Except for the root space, all the other spaces must define their parents.
  parent_space_id = "root"

  # An optional description of a space.
  description = "This a child of the root space. It contains all the resources common to the development infrastructure."
}

resource "spacelift_role" "testrole" {
  name = "Test Role"
  description = "Role for second user to assume and try"
  actions = [
  "SPACE_WRITE", 
  "CONTEXT_DELETE",
  "CONTEXT_UPDATE"
  ]
}

