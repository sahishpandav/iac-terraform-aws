module "iam-user" {
  source = "./iam-user/"
  filepath = file("${path.module}/templates/users-1.yml")
}