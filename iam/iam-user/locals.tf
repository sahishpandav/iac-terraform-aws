locals {
  users = yamldecode(var.filepath)["users"]
  names = [for u in local.users: u.name]

  map = {for u in local.users: u.name => u.role}
  
  force_destroy = true

  policy_arns = {
    admin     = "arn:aws:iam::aws:policy/AdministratorAccess"
    readonly  = "arn:aws:iam::aws:policy/ReadOnlyAccess"
    poweruser = "arn:aws:iam::aws:policy/PowerUserAccess"
  }
  tags = merge(var.tags, {"ENV" : "DEV", "Created_By" : "Sahish", "Project" : "IAM-User", "Created_On" : timestamp()})
}