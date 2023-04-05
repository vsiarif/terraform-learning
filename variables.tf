
variable “aws_access_key” {
  default = “AKIAQUMQAZ7ZY3RER5OV”
}
variable "aws_secret_key" {
  default = "E8ppGdBkZ0Wqk20pciU1A1AoAMNwspCrYl7aO2JB"
}
variable "instance_name" {
        description = "Name of the instance to be created"
        default = "awsbuilder-demo"
}

variable "instance_type" {
        default = "t2.micro"
}

variable "subnet_id" {
        description = "The VPC subnet the instance(s) will be created in"
        default = "subnet-0425737ffe4507d51"
}

variable "ami_id" {
        description = "The AMI to use"
        default = "ami-06e46074ae430fba6"
}

variable "number_of_instances" {
        description = "number of instances to be created"
        default = 1
}



