# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket         = "fomiller-terraform-state-dev"
    dynamodb_table = "fomiller-terraform-state-lock"
    encrypt        = true
    key            = "aws-infrastructure/lambda/terraform.tfstate"
    region         = "us-east-1"
  }
}