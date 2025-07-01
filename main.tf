resource "spacelift_worker_pool" "k8s-core" {
  name        = "Main worker"
  csr         = filebase64("workerpooltest.csr")
  description = "test"
}

resource "spacelift_context" "prod-k8s-ie" {
  description = "Configuration details for the compute cluster in 🇮🇪"
  name        = "Production cluster (Ireland)"
  space_id = "root"
}