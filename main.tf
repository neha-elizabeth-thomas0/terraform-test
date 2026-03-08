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
  }
}

provider "random" {}
provider "local" {}

# Generate random pet name
resource "random_pet" "pet_name" {
  length = 2
}

# Create a local file using random name
resource "local_file" "generated_file" {
  filename = "${var.file_prefix}-${random_pet.pet_name.id}.txt"

  content = <<EOT
Pet Name: ${random_pet.pet_name.id}
Custom Message: ${var.file_content}
EOT
}

resource "null_resource" "test2" {
  provisioner "local-exec" {
    command = "echo 'Testing run task!'"
  }

}