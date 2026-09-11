terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "jenkins_demo" {
  filename = "jenkins-terraform.txt"
  content  = "Terraform executed successfully through Jenkins!"
}