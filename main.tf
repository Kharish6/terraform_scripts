#default provider configuration
provider "aws" {
  region = var.aws_region
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
