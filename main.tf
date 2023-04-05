# Configure the AWS Provider
provider "aws" {
  access_key=var.aws_access_key
  secret_key=var.aws_secret_key
  region = "us-east-1"
 
}
resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_id}"
    count = "${var.number_of_instances}"
    subnet_id = "${var.subnet_id}"
    instance_type = "${var.instance_type}"
    
} 
