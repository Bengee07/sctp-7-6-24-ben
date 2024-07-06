data "aws_iam_policy_document" "iam" {
  statement {
    sid = "1"

    actions = [
      "s3:GetObject"
    ]

    resources = [
      "arn:aws:s3:::*"
    ]
  }
}
  