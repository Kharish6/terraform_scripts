#default provider configuration
provider "aws" {
  region = "ap-south-1"
}


resource "aws_instance" "linuxAMI" {
  ami           = "ami-035827357e3c7e0" 
  instance_type = "t3.micro"
  tags = {
    Name = "linux-amiInstance"
  }
}

output "Instance_names" {
  value = [aws_instance.linuxAMI.tags["Name"]]
}