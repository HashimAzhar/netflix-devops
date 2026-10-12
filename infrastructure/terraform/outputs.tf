output "ec2_public_ip" {
  description = "Public IP address of the Netflix server"
  value       = aws_instance.netflix_server.public_ip
}

output "ec2_instance_id" {
  description = "ID of the Netflix EC2 instance"
  value       = aws_instance.netflix_server.id
}
