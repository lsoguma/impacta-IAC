resource "aws_s3_bucket" "bucket-class" {
    bucket = "oguma-terraform-impacta"

    tags = {
        Environment = var.s3_env  
        Provisioner = "Terraform"
    }
}