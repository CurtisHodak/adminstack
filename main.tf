resource "spacelift_worker_pool" "k8s-core" {
  name        = "Main worker"
  csr         = filebase64("workerpooltest.csr")
  description = "test"
}