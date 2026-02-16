data "aws_key_pair" "ec2_keypair" {
  key_name = "terraform_data"
}
resource "aws_instance" "my-instance" {
  ami               = "ami-0532be01f26a3de55"
  availability_zone = "us-east-1a"
  instance_type     = var.instance_type
  key_name = data.aws_key_pair.ec2_keypair.key_name
  tags = {
    "Name" = "dhruv"
    "app"  = "frontend"
    "for" = "dhruv"
    "env" = var.env
    }
}
