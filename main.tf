# resource "spacelift_space" "problemspace" {
#     name = "problemspace"
#     parent_space_id = "root"
# }

resource "spacelift_blueprint" "blueprint2" {
  name        = "blueprint2"
  space       = "root"
  state       = "PUBLISHED"
  description = "testing"
  template    = file("${path.module}/blueprint1.yaml")
}

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

#

# ephemeral "random_password" "example" {
#   length  = 24
#   special = true
# }

# output "password_preview" {
#   value            = substr(ephemeral.random_password.example.result, 0, 4)
#   ephemeral        = true
#   sensitive        = true
# }
