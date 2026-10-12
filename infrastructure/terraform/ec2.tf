
resource "aws_instance" "netflix_server" {
  ami                    = "ami-0f8a61b66d1accaee"
  instance_type          = "t3.micro"
  subnet_id              = "subnet-0694cd828185ef4df"
  vpc_security_group_ids = ["sg-017247cb579f6e770"]
  key_name               = "netflix-devops-key"

  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }

  metadata_options {
    http_tokens = "required"
  }

  monitoring = false

  tags = {
    Name = "netflix-devops-server-terraform"
  }
}
