variable "instance_name" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "vpc_id" {
  description = "ID da VPC onde a EC2 será criada"
  type        = string
}
