output "aws_security_group_http_server_details" {
  value = aws_security_group.http_server_sg
}

output "aws_instance_http_server_details" {
  value = aws_instance.http_server
}