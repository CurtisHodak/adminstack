resource "spacelift_worker_pool" "k8s-core1" {
  config = "ajfkld;sajkl;"
  name        = "Main worker"
  csr         = filebase64("workerpooltest.csr")
  description = "test"
}

resource "spacelift_context" "prod-k8s-ie" {
  description = "Configuration details for the compute cluster in 🇮🇪"
  name        = "newnameforcontext"
  space_id = "root"
}