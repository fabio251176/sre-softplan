
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
  instance_name = var.instance_name
  instance_type = var.instance_type
  ami_id        = var.ami_id
  subnet_id     = module.vpc.subnet_id
}

module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = "sre-demo-bucket-${var.environment}"
}
