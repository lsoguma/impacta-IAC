resource "aws_instance" "server" {
    ami = var.ami
    instance_type = var.instance_type

    tags = {
        Name = var.instance_name
        Environment = var.instance_env
        Provisioner = "Terraform"
    }
}

resource "aws_vpc" "main" {
    cidr_block = var.base_cidr_block
}