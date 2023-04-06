# Configure the AWS Provider
provider "aws" {
    access_key = AKIAQUMQAZ7ZY3RER5OV
    secret_key = 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
    region = "us-east-1"
 }
resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_id}"
    count = "${var.number_of_instances}"
    subnet_id = "${var.subnet_id}"
    instance_type = "${var.instance_type}"
    
} 
