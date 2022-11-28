root in ~/code/terraform-projects via 💠 default on ☁️  (us-east-1) took 21s 
❯ ls
main.tf  provider.tf  terraform.tfstate

root in ~/code/terraform-projects via 💠 default on ☁️  (us-east-1) 
❯ cat main.tf 
variable "ami" {
    default  = "ami-06178cf087598769c"

}
variable "instance_type" {
    default = "t3.micro"

}
variable "region" {
    default = "eu-west-2"

}
resource "aws_instance" "test-servers" {
    ami = var.ami
    instance_type = var.instance_type

}


root in ~/code/terraform-projects via 💠 default on ☁️  (us-east-1) 
❯ cat provider.tf 
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.15.0"
    }
  }
}

provider "aws" {
  region                      = var.region
  skip_credentials_validation = true
  skip_requesting_account_id  = true

endpoints {
    apigateway     = "http://aws:4566"
    cloudformation = "http://aws:4566"
    cloudwatch     = "http://aws:4566"
    dynamodb       = "http://aws:4566"
    es             = "http://aws:4566"
    firehose       = "http://aws:4566"
    iam            = "http://aws:4566"
    kinesis        = "http://aws:4566"
    lambda         = "http://aws:4566"
    route53        = "http://aws:4566"
    redshift       = "http://aws:4566"
    s3             = "http://aws:4566"
    secretsmanager = "http://aws:4566"
    ses            = "http://aws:4566"
    sns            = "http://aws:4566"
    sqs            = "http://aws:4566"
    ec2            = "http://aws:4566"
    ssm            = "http://aws:4566"
    stepfunctions  = "http://aws:4566"
    sts            = "http://aws:4566"
  }
}

root in ~/code/terraform-projects via 💠 default on ☁️  (us-east-1) 
