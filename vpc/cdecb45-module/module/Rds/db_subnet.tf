resource "aws_db_subnet_group" "my_rds_subnet_01" {
    name =  "my_rds_subnet_01"
    subnet_ids = [
        "subnet-09c8b052b96218303",
        "subnet-0db2585c798478504"
    ]
       
}