output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = module.vpc.subnet_ids
}

output "iam_users" {
  description = "List of IAM user names"
  value       = var.iam_users
}

output "iam_access_keys" {
  description = "Access keys for the IAM users"
  value       = { for user in aws_iam_access_key.user_keys : user.user => user.secret }
}
