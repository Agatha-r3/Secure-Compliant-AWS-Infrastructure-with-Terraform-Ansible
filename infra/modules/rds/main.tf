resource "aws_db_subnet_group" "default" {
  name       = "rds-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "RDSSubnetGroup"
  }
}

resource "aws_db_instance" "default" {
  identifier              = "secure-db"
  allocated_storage       = 20
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t3.micro"
  username                = "admin"
  password                = "SecurePassword123!"
  db_subnet_group_name    = aws_db_subnet_group.default.name
  vpc_security_group_ids  = var.security_group_ids
  multi_az                = true
  storage_encrypted       = true
  skip_final_snapshot     = true

  tags = {
    Name = "SecureRDS"
  }
}

output "endpoint" {
  value = aws_db_instance.default.endpoint
}
