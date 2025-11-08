locals {

}

resource "aws_iam_user" "this" {
  for_each = toset(local.names)
  name = each.key
#   path = "/system/"
  force_destroy = local.force_destroy
  tags = local.tags
}


resource "aws_iam_user_policy_attachment" "this" {
  for_each = toset(local.names)
  user       = each.key
  policy_arn =  local.policy_arns[local.map[each.key]] # accepted values admin, poweruser, readonly
  depends_on = [ aws_iam_user.this ]
}