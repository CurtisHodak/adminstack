data "spacelift_role_actions" "all" {}

output "all_role_actions" {
  value = data.spacelift_role_actions.all.actions
}

data "spacelift_ips" "ips" {}

output "ips" {
  value = data.spacelift_ips.ips
}

data "spacelift_space_by_relative_path" "spacepath" {
  space_path = "TestSpacebyPath/bypath1/three"
}

output "space_id" {
  value       = data.spacelift_space_by_relative_path.spacepath.id
  description = ""
}

variable "testing" {
  type    = string
  default = ""
}