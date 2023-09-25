#Create subnet group for RDS
resource "aws_db_subnet_group" "project_db_subnet_group" {
  name       = "project_db_subnet_group"
  subnet_ids = [aws_subnet.private1.id, aws_subnet.private2.id, aws_subnet.private3.id]
}
