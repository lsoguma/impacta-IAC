variable "ami" {
    type = string
    default = "ami-005f9685cb30f234b"
    description = "AMI do EC2"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "Tipo da instância EC2"
}

variable "instance_name" {
    type = string
    default = "ec2_via_terraform"
    description = "Nome da instância EC2"
}

variable "s3_env" {
    type = string
    default = "dev"
    description = "Nome da instância EC2"
}

variable "base_cidr_block" {
    type = string
    default = "10.0.0.0/16"
    description = "base_cidr_block da VPC"
}
