provider "aws" {
  region = "us-east-1"  # Specify your AWS region
}

resource "aws_instance" "example" {
  ami           = var.ami_id             # AMI ID (this will be taken from variables.tf)
  instance_type = var.instance_type     # Instance type (this will be taken from variables.tf)
  
  tags = {
    Name = "GitHub-EC2"
  }
}
