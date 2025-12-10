resource "aws_internet_gateway" "my_igw" {
    vpc_id = aws_vpc.my_vpc.id

    tags = {
    Name = "My_igw"
}
}


provider "aws" {
    region = "eu-north-1" 
}

resource "aws_vpc" "my_vpc" {
    cidr_block = var.cidr_block 
    instance_tenancy = "default"

    tags = {
        Name = "My-vpc"

    }
}


provider "aws" {
    region = "eu-north-1" 
}

resource "aws_vpc" "my_vpc" {
    cidr_block = var.cidr_block 
    instance_tenancy = "default"

    tags = {
        Name = "My-vpc"

    }
}