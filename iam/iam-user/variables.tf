variable "user-name" {
    type = string
    description = "The user's name."
    default = "default-user"

    validation {
      error_message = "The name must consist of upper and lowercase alphanumeric characters with no spaces"
      condition =  !can(regex("\\s", var.user-name))
    }
}

variable "access-type" {
    type = string
    description = "Access type of IAM User"

    validation {
      error_message = "Must be one of the value. [readonly, admin, poweruser]"
      condition = contains(["readonly", "poweruser", "admin"], var.access-type)
    }
}

variable "tags" {
    type = map(any)
    description = "List of tags"
    default = {
    }
}