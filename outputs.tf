data "spacelift_role_actions" "all" {}

output "all_role_actions" {
  value = data.spacelift_role_actions.all.actions
}

data "spacelift_ips" "ips" {}

output "ips" {
  value = data.spacelift_ips.ips
}