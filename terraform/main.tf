provider "aws" {
  region = var.region
}

module "vpc" {
  source      = "./modules/vpc"
  cidr_block  = var.vpc_cidr_block
  environment = var.environment
}

module "ec2_instance" {
  source        = "./modules/ec2"
  instance_name = "sre-demo"
  instance_type = "t2.micro"
  ami_id        = var.ami_id
  vpc_id        = module.vpc.vpc_id
}

module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = "sre-demo-bucket-${var.environment}"
}

