provider "aws" {
  region = var.region
}

module "ec2_instance" {
  source        = "./modules/ec2"
  instance_name = "sre-demo"
  instance_type = "t2.micro"
  ami_id        = var.ami_id
}

module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = "sre-demo-bucket-${var.environment}"
}