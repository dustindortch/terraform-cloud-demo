terraform {
  cloud {
    organization = "DustinDortch"

    workspaces {
      name = "workspace-name"
    }
  }
}

variable "first_value" {
  default = 8
  type    = number
}

variable "second_value" {
  default = 3
  type    = number
}

locals {
  sum = var.first_value + var.second_value
}

output "test_me" {
  value = local.sum
}
