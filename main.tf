# RSA key of size 4096 bits
resource "tls_private_key" "rsa-4096" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "aws_key_pair" {
  key_name   = var.aws_key_pair_name
  public_key = tls_private_key.rsa-4096.public_key_openssh
}

#creates private key in local machine
resource "local_file" "tls_private_key" {
  content = tls_private_key.rsa-4096.private_key_pem
  filename = var.aws_key_pair_name
}

resource "aws_instance" "public_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = aws_key_pair.aws_key_pair.key_name

  tags = {
    Name = "Terraform Provisioned"
  }
}