output "arn" {
  description = "The ARN of the instance"
  value       = aws_instance.ec2.*.arn
}
