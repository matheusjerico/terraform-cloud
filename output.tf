output "public_ip" {
  value = module.servers.public_ip
}

output "public_dns" {
  value = module.servers.public_dns
}

output "tag_name" {
  value = module.servers.tag_name
}

output "lb_public_ip" {
  value = module.servers.lb_public_ip
}

output "lb_public_dns" {
  value = module.servers.lb_public_dns
}

output "bucket_domain_name" {
  value = module.servers.bucket_domain_name
}