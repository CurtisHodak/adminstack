resource "spacelift_space" "problemspace" {
    name = "problemspace"
    parent_space_id = "root"
}

# resource "spacelift_blueprint" "blueprint1" {
#   name        = "blueprint1"
#   space       = "root"
#   state       = "PUBLISHED"
#   description = "testing"
#   template    = file("${path.module}/blueprint1.yaml")
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

#
# resource "spacelift_named_webhook" "ngrok3" {
#   enabled     = true
#   name        = "ngrok3"
#   space_id    = "root"
#   # These will be filled in after import
#   endpoint = "https://hilaria-nonpelagic-devorah.ngrok-free.dev"
#   secret = "mysecret"
# }
