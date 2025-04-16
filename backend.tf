terraform {
  backend "s3" {
    bucket       = "dubovsky-andrey-terraform-stage-bucket"
    key          = "aws-ec2-simple/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true
  }
}
