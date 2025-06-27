# 🌐 S3 Static Website Hosting with Terraform

This project hosts a static website on **Amazon S3** using **Terraform** for infrastructure as code. It also includes a sample CI workflow and basic HTML files for hosting.

---

## 🚀 Features

- Host static website using AWS S3
- Terraform-managed infrastructure
- Public access configuration with ownership controls
- `index.html` and `error.html` pages
- GitHub Actions CI placeholder

---

## 📁 Project Structure

```
s3-static-site-project/
├── index.html                 # Home page
├── error.html                 # Error page
├── Dockerfile                 # Optional: for container use
├── .github/workflows/         # GitHub Actions CI config
│   └── docker-ci.yaml
└── terraform/                 # Terraform infrastructure files
    ├── provider.tf
    ├── main.tf
    ├── bucket-policy.tf
    ├── ownership.tf
    ├── website-config.tf
    ├── outputs.tf
    ├── terraform.tfstate*     # (Excluded via .gitignore)
    └── .terraform.lock.hcl
```

---

## 🛠️ Setup Instructions

### ✅ Prerequisites

- AWS CLI configured (`aws configure`)
- Terraform installed
- A user with `AdministratorAccess` or `S3 Full Access`

### 📦 Initialize and Apply Terraform

```bash
cd terraform/
terraform init
terraform apply
```

You’ll see output like:
```bash
Outputs:
website_url = "mukul-site-hosting-001.s3-website.ap-south-1.amazonaws.com"
```

### 📤 Upload Content

```bash
aws s3 sync ../ s3://mukul-site-hosting-001 --exclude "terraform/*"
```

---

## 🌍 Access Your Website

> Open in browser:

**[http://mukul-site-hosting-001.s3-website.ap-south-1.amazonaws.com](http://mukul-site-hosting-001.s3-website.ap-south-1.amazonaws.com)**

---

## 📦 Git Tips

Avoid pushing large `.terraform/` directory:

```bash
# Add .terraform/ to .gitignore
echo ".terraform/" >> .gitignore

# Remove it from history if accidentally committed
git rm -r --cached terraform/.terraform
```

---

## 👨‍💻 Author

**Mukul Bhardwaj**  
GitHub: [MukulB0412](https://github.com/MukulB0412)

---

## 🏗️ Future Improvements

- Add CloudFront for HTTPS support
- Add domain via Route53
- Add CI/CD with GitHub Actions