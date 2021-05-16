module "servers" {
  source = "./servers"

  instance_type = var.instance_type
  ec2_tags      = var.ec2_tags
  bucket_name   = var.bucket_name
  bucket_tags   = var.bucket_tags
  blocks_device = var.blocks_device
}
