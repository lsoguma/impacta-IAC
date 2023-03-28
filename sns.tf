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

data "aws_iam_policy_document" "test" {
  statement {
    sid    = "First"
    effect = "Allow"

    principals {
      type        = "*"
      identifiers = ["*"]
    }

    actions   = ["sqs:SendMessage"]
    resources = [aws_sqs_queue.sqs-class.arn]

    condition {
      test     = "ArnEquals"
      variable = "aws:SourceArn"
      values   = [aws_sns_topic.example.arn]
    }
  }
}

resource "aws_sqs_queue_policy" "test" {
  queue_url = aws_sqs_queue.sqs-class.id
  policy    = data.aws_iam_policy_document.test.json
}