terraform{
    backend "S3" {
        bucket = "terraform-aws-004"
        key = "terraform.tfstate"
        region = "ap-south-1"
    }
}


provider "aws"{
    region = "ap-south-1"
}

resource "aws_instance" "my_instance"{
    ami = "ami id"
    instance_type = "t3.micro"
    tags = {
        Name = "terraform module"
    }
}