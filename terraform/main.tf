provider "aws" {
  region = "ap-south-1"  
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "mybucket830287396e486"
  acl    = "private"
}
