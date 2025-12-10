provider "aws" {
   region = "ap-south-1"  
}
   
    resource "aws_db_instance" "my_rds" {
    
     engine               = "mariadb"
      engine_version       = "11.4.5"
      instance_class       = "db.t3.micro"
      allocated_storage    = 5
      db_name              = "my_db"
      username             = var.username     #-------> Value refer from variable.tf file
      password             = var.password     #-------> Value refer from variable.tf file
      db_subnet_group_name = aws_db_subnet_group.my_rds_subnet.name
      vpc_security_group_ids = ["sg-04e380968a0673f18"]
      publicly_accessible  = false
      skip_final_snapshot  = true

      tags = {
    
        Name = "My_RDS"
      }
   }