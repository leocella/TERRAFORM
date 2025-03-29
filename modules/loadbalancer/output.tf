output "leocella_nginx_ec2" {
  description = "ID of the EC2 instance"
  value       = aws_instance.leocella_nginx_ec2.id
  
}

output "security_group_id" {
  description = "ID of the security group"
  value   = aws_security_group.leocella_nginx_sg.id
}