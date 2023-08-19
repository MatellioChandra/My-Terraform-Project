
resource "aws_db_subnet_group" "aurora_subnet_group" {
  name       = "aurora-subnet-group"
  subnet_ids = ["subnet-xxxxxxxxxxxx", "subnet-yyyyyyyyyyyy"]  # Replace with your subnet IDs
}

resource "aws_db_parameter_group" "aurora_parameter_group" {
  name = "aurora-parameter-group"
  family = "aurora-postgresql"
  description = "Custom parameter group for Aurora"
  
  parameter {
    name = "max_connections"
    value = "1000"
  }
  
}

resource "aws_db_instance" "aurora_instance" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "aurora-postgresql" 
  engine_version       = "11.6"
  instance_class       = "db.r5.large" 
  db_name              = "aurora-db-instance"
  username             = "admin"
  password             = "P@ss1234"
  parameter_group_name = aws_db_parameter_group.aurora_parameter_group.name
  skip_final_snapshot = true
  db_subnet_group_name = aws_db_subnet_group.aurora_subnet_group.name
  
  tags = {
    Name = "AuroraDBInstance"
  }
}

resource "aws_rds_cluster" "aurora_cluster" {
  engine            = "aurora-postgresql" 
  engine_version    = "11.6"
  cluster_identifier = "aurora-db-cluster"
  master_username   = "admin"
  master_password   = "P@ss1234"
  db_subnet_group_name = aws_db_subnet_group.aurora_subnet_group.name
  vpc_security_group_ids = ["sg-xxxxxxxxxxxxxxxxx"]  # Replace with your security group IDs
  
  skip_final_snapshot = true
  
  tags = {
    Name = "AuroraDBCluster"
  }
}
