output "instance_id" {
  description = "instance id description"
  value       = aws_instance.linuxAMI.id
}

output "instance_name" {
  description = "name of the instance created"
  value       = aws_instance.linuxAMI.tags
}