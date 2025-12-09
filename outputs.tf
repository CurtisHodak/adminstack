data "spacelift_role_actions" "all" {}

output "all_role_actions" {
  value = data.spacelift_role_actions.all.actions
}

data "spacelift_ips" "ips" {}

output "ips" {
  value = data.spacelift_ips.ips
}

# data "spacelift_space_by_path" "spacepath" {
#   space_path = "root/klav1/klav2/klav3"
# }

# output "space_id" {
#   value       = data.spacelift_space_by_path.spacepath.id
#   description = "The internal Spacelift space ID for root/klav1/klav2/klav3"
# }