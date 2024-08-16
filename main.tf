terraform {
  required_version = "~> 1.8.3"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.2"
    }
  }
}

provider "random" {}

resource "random_integer" "example" {
  min = 1
  max = 100
}

output "random_number" {
  value = random_integer.example.result
}

