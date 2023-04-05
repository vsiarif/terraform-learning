terraform {
  required_providers {
    # This is the current syntax, which is still supported
    random = ">= 2.7.0"

    # This is the new syntax. "source" and "version" are both 
    # optional, though in the future "source" will be required for 
    # any provider that isn't maintained by HashiCorp.
    random = {
        source = "registry.terraform.io/hashicorp/random"
        version = "2.1.0"
    }
  }
}
resource "aws_instance" "" {
  ami           = var.ami
  instance_type = var.instance_type

  network_interface {
    network_interface_id = var.network_interface_id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}
