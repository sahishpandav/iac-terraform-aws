# 🌐 Static Website Hosting on Amazon S3 using Terraform

This project automates the setup of a **static website hosting environment** on **AWS S3** using **Terraform**.  
The goal is to deploy an HTML/CSS-based website (or a React-built static site) to an S3 bucket configured for website hosting, with public access and optional CloudFront CDN integration.

---

## 🚀 Project Overview

This Terraform project:
- Creates an **S3 bucket** configured for static website hosting.
- Uploads local website files (HTML, CSS, JS) to the bucket.
- Sets proper **permissions** and **bucket policy** for public read access.
- Optionally supports adding a **custom domain** and **CloudFront distribution** (for CDN and HTTPS).

---

## 📁 Project Structure

```
terraform-s3-static-website/
│
├── main.tf # S3 bucket and hosting configuration
├── provider.tf # configuring the providers 
├── variables.tf # Input variables
├── outputs.tf # Outputs (e.g., bucket website endpoint)
├── files/ # Your website files (index.html, styles.css, etc.)
│ ├── index.html
│ └── styles.css
└── README.md # Project documentation
```


---

## 🧩 Features

- ✅ Create S3 bucket for website hosting  
- ✅ Enable public read access for objects  
- ✅ Upload static assets (HTML, CSS, JS)  
- ✅ Configure index and error documents  
- ✅ Output S3 website endpoint URL  
- 🔒 (Optional) Attach CloudFront for HTTPS access  
- 🌍 (Optional) Use Route53 to map a custom domain  

---

## ⚙️ Prerequisites

Before starting, make sure you have:
- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
- AWS CLI configured (`aws configure`)
- Your AWS credentials exported:
  ```bash
  export AWS_ACCESS_KEY_ID=xxxx
  export AWS_SECRET_ACCESS_KEY=yyyy


---

