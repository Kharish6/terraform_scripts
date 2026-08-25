variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "instance_type" {
  type    = string
  default = "t3.small"
}

variable "ami_id" {
  type    = string
  default = "ami-0ac7b260cf76d8865"
}

variable "environment" {
  type = string
}

variable "availability_zone"{
    type = string
    default = "ap-south-1a"
}

variable "subnet"{
    type = string
    default = "subnet-037209f856165f414"
}