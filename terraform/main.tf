provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
}

resource "aws_instance" "web" {
  ami           = "ami-0abcdef1234567890" # Replace with a valid AMI ID for ap-south-1
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
}

resource "aws_s3_bucket" "bucket" {
  bucket = "mybucket830287396e486"
  acl    = "private"
}