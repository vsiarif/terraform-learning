variable "access_key" {
        description = "AKIAQUMQAZ7ZY3RER5OV"
}
variable "secret_key" {
        description = "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"
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
        default = "subnet-07ebbe60"
}

variable "ami_id" {
        description = "The AMI to use"
        default = "ami-09d56f8956ab235b3"
}

variable "number_of_instances" {
        description = "number of instances to be created"
        default = 1
}


variable "ami_key_pair_name" {
        default = "tomcat"
}
