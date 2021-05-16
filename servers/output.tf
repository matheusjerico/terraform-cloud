output "public_ip" {
  value = aws_instance.web.public_ip
}

output "public_dns" {
  value = aws_instance.web.public_dns
}

output "tag_name" {
  value = aws_instance.web.tags.Name
}

output "lb_public_ip" {
  value = aws_eip.lb.public_ip
}

output "lb_public_dns" {
  value = aws_eip.lb.public_dns
}

output "bucket_domain_name" {
  value = aws_s3_bucket.bucket.bucket_domain_name
}
