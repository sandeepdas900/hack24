provider "aws" {
  region = "ap-south-1"  # Replace with your AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Example AMI, choose the correct one based on your needs
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "mybucket830287396e486"
  acl    = "private"
}
