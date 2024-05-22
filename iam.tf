resource "aws_iam_user" "users" {
  for_each = toset(var.iam_users)
  name     = each.key
}

resource "aws_iam_user_policy" "user_policy" {
  for_each = toset(var.iam_users)
  name     = "${each.key}-policy"
  user     = aws_iam_user.users[each.key].name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["ec2:Describe*", "s3:ListAllMyBuckets"]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_access_key" "user_keys" {
  for_each = toset(var.iam_users)
  user     = aws_iam_user.users[each.key].name
}
