resource "aws_sns_topic" "sns-class" {
  name = "my-first-sns"
}

resource "aws_sqs_queue" "sqs-class" {
  name = "my-first-queue"
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  topic_arn = aws_sns_topic.sns-class.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.sqs-class.arn
}