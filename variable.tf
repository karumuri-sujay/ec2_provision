variable "aws_key_pair_name" {
    type = string
    description = "Key Pair Name"
    default = "terraform_key_pair"
}

variable "ami" {
  type = string
  description = "AMI ID"
}

variable "instance_type" {
  type = string
  description = "Instance type"
  default = "t3.micro"
}