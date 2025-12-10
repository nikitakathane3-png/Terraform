provider "aws" {
    region = "ap-south-1"
}

module "db" {
   source = "./rds"
} 