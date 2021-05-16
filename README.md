# terraform-cloud

This repository is a basic example to how create instancer, elastic IP and bucket in AWS using Terraform.

The goal of this repository is to practice to use Terraform Cloud instead remote state.

```bash
.
.
├── .gitignore
├── README.md
└── terraform
    ├── main.tf
    ├── output.tf
    ├── plan
    ├── servers
    │   ├── ec2.tf
    │   ├── output.tf
    │   ├── s3.tf
    │   └── variables.tf
    ├── terrafile.tf
    ├── terraform.tfvars
    └── variables.tf

```

Steps:
1. Terraform init
```bash
terraform -chdir=terraform init
```
2. Terraform plan
```bash
terraform -chdir=terraform plan -out=plan
```
3. Terraform apply
```bash
terraform -chdir=terraform apply "plan"
```
4. Terraform destroy
```bash
terraform -chdir=terraform destroy
```
=)