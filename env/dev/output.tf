output "dev_ec2_public_ip" {
  value       = module.dev-ec2.public_ip
  description = "Public IP Address of Dev EC2 instance"
}

output "dev_ec2_instance_id" {
  value       = module.dev-ec2.instance_id
  description = "Dev Instance ID"
}