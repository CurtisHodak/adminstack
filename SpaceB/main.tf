# --- Admin stack in SpaceB ---
resource "spacelift_stack" "admin_space_b" {
  administrative          = true
  name                    = "Admin: SpaceB"
  repository              = "adminstack"
  branch                  = "main"
  project_root            = "SpaceB"     # folder in your repo
  terraform_workflow_tool = "OPEN_TOFU"
  terraform_version       = "1.10.5"
  space_id = "spaceb-01K3VD8C92DVJCVJBKRVZCN359"
}