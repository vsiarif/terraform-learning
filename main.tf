terraform {
  required_providers {
        # This is the new syntax. "source" and "version" are both 
    # optional, though in the future "source" will be required for 
    # any provider that isn't maintained by HashiCorp.
    random = {
        source = "registry.terraform.io/hashicorp/random"
        version = "2.1.0"
    }
  }
}
resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_id}"
    count = "${var.number_of_instances}"
    subnet_id = "${var.subnet_id}"
    instance_type = "${var.instance_type}"
    key_name = "${var.ami_key_pair_name}"
} 
