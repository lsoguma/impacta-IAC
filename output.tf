output "aws_instance_type" {
    description = "Name"
    value = aws_instance.server.instance_type
}

output "aws_s3_bucket" {
    description = "Name"
    value = aws_s3_bucket.bucket-class.arn
}