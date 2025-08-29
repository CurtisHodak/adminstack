# --- Admin stack in SpaceA ---
resource "spacelift_stack" "admin_space_a" {
  administrative          = true
  name                    = "Admin: SpaceA"
  repository              = "adminstack"
  branch                  = "main"
  project_root            = "SpaceA"     # folder in your repo
  terraform_workflow_tool = "OPEN_TOFU"
  terraform_version       = "1.10.5"
  space_id                = "spacea-01K3VD8C7THQR931YW82QVCJK1"
}