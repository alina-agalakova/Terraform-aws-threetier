#Specify AMI Linux-2
data "aws_ami" "amazon-2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }
  owners = ["amazon"]
}

# Create VM 
resource "aws_instance" "wordpress" {
  availability_zone      = var.availability_zone
  ami                    = data.aws_ami.amazon-2.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  key_name               = aws_key_pair.project_keypair.key_name
  subnet_id              = aws_subnet.public2.id

  tags = {
    "Name" : "wordpress_for_ami"
  }


  connection {
    type        = "ssh"
    user        = var.instance_username
    private_key = file(var.path_to_private_key)
    host        = aws_instance.wordpress.public_ip
  }
}
