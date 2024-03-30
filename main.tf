provider "aws" {
  region = "ap-southeast-1"
}

# resource "aws_instance" "hello_world" {
#   ami           = "ami-0adf622550366ea53"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "HelloWorld"
#   }
# }

module "s3_bucket" {
  source = "./modules/S3"
  bucket_name = "vinh-demo-bucket"
}

module "s3_bucket_1" {
  source = "./modules/S3"
  bucket_name = "vinh-demo-bucket-1"
}

module "s3_bucket_2" {
  source = "./modules/S3"
  bucket_name = "vinh-demo-bucket-2"
}

module "s3_bucket_3" {
  source = "./modules/S3"
  bucket_name = "vinh-demo-bucket-3"
}