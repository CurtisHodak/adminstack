resource "spacelift_worker_pool" "k8s-core1" {
  name        = "Main worker"
  csr         = filebase64("workerpooltest.csr")
  description = "test"
}

resource "spacelift_context" "prod-k8s-ie" {
  description = "Config"
  name        = "newnameforcontext"
  space_id = "root"
}