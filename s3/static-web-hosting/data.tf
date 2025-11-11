# This data block generates the required JSON policy string
data "aws_iam_policy_document" "public_read_access" {
  # We can optionally add an "id" for the policy here if needed

  statement {
    # Sid is added here to match your example JSON structure
    sid = "PublicReadGetObject"

    # The principal type "AWS" with an identifier of "*" allows access from all identities (anonymous included)
    # This generates "Principal": "*" in the JSON
    principals {
      type        = "*"
      identifiers = ["*"]
    }

    # Effect defaults to "Allow" if not specified, but we specify it for clarity
    effect = "Allow"

    # Action required for reading objects
    actions = [
      "s3:GetObject",
    ]

    # Resources targeted by this policy. 
    # NOTE: You will need to replace "arn:aws:s3:::sahish-s3-bucket-demo" 
    # with a variable, hardcoded string, or reference to an s3 bucket resource ARN.
    resources = [
      "arn:aws:s3:::sahish-s3-bucket/*",
    ]
  }
}

# data "mime_type" "objects" {
#   for_each = locals.files_to_upload
#   filename = each.value
# }
