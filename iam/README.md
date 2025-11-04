# AWS IAM Management with Terraform & YAML

## Overview
This project automates the management of AWS Identity and Access Management (IAM) entities — users, roles, and policies — using Terraform and YAML configuration files.
It demonstrates Infrastructure as Code (IaC) best practices for maintaining secure, scalable, and version-controlled IAM setups.

User details (usernames, assigned roles) are stored in a YAML file, while Terraform dynamically reads and provisions them to AWS. The system ensures that roles can only be assumed by the users assigned to them, providing strong security boundaries.

## Desired Outcome

### IAM Users
1. Create YAML file users.yaml for user definitions:

```yaml
users:
  - name: alice
    role: S3ReadOnly
  - name: bob
    role: EC2FullAccess
```

2. Write Terraform code (user.tf) to read YAML data and create IAM users dynamically.