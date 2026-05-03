output "ec2_public_ip" {
  value = module.ec2.public_ip
}

output "alb_dns" {
  value = module.alb.alb_dns
}

output "s3_bucket" {
  value = module.s3.bucket_name
}