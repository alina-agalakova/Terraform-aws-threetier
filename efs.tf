resource "aws_efs_file_system" "project_efs" {
  creation_token = "my-efs"

  tags = {
    Name = "project_efs"
  }
}

resource "aws_efs_mount_target" "project" {
  file_system_id = aws_efs_file_system.project_efs.id
  subnet_id      = aws_subnet.public1.id
}

