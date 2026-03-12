terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

provider "random" {}
provider "local" {}
provider "null" {}

resource "random_pet" "pet_name" {
  length = 2
}

resource "local_file" "generated_file" {
  filename = "${var.file_prefix}-${random_pet.pet_name.id}.txt"

  content = <<EOT
Pet Name: ${random_pet.pet_name.id}
Custom Message: ${var.file_content}
EOT
}


