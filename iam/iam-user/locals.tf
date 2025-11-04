locals {
  force_destroy = true

  policy_arns = {
    admin     = "arn:aws:iam::aws:policy/AdministratorAccess"
    readonly  = "arn:aws:iam::aws:policy/ReadOnlyAccess"
    poweruser = "arn:aws:iam::aws:policy/PowerUserAccess"
  }
  tags = merge(var.tags, {"ENV" : "DEV", "Created_By" : "Sahish", "Project" : "IAM-User", "Created_On" : timestamp()})
}