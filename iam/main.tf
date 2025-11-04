module "iam-user" {
  source = "./iam-user/"
  user-name = "demo-iac"
  access-type = "readonly"
}