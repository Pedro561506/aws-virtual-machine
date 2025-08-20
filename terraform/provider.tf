# PROVIDER
terraform {

  required_version = "1.12.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.9.0"
    }
  }

}

 backend "s3" {
    bucket       = "vasco1"  # SUBSTITUA
    key          = "tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
