terraform {
  required_providers {
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "~>1.0"
    }
  }

}

provider "spacelift" {
  api_key_endpoint = "https://curtishodak.app.spacelift.io"
  api_key_id       = "01JWC43XRCKV57TD6JSDVF0Y5S"
  api_key_secret   = "58818c39cc2860a1872f3d8048fb90237d0159ae359e8e702369bce14ca4931c"
}