#default provider configuration
provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "tfstate-983401047700-ap-south-1-an"
    key    = "dev.tfstate"
    region = "ap-south-1"
  }
}

resource "aws_instance" "linuxAMI" {
  ami           = var.ami_id
  instance_type = var.instance_type
  availability_zone = var.availability_zone
  subnet_id = var.subnet
  tags = {
    Name = "${var.environment}"
  }
}
