resource "aws_iam_user" "this" {
  name = var.access-type
#   path = "/system/"

  force_destroy = local.force_destroy
  tags = local.tags
}


resource "aws_iam_user_policy_attachment" "administrator" {
  user       = aws_iam_user.this.name
  policy_arn =  local.policy_arns[var.access-type]  # accepted values admin, poweruser, readonly
}