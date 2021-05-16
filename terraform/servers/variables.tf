variable "instance_type" {
  type = string
}

variable "ec2_tags" {
  type = object({
    Name        = string
    Environment = string
  })
}

variable "bucket_name" {
  type    = string
  default = "hello-word"
}

variable "bucket_tags" {
  type = object({
    Name        = string
    Environment = string
  })
}

variable "blocks_device" {
  type = list(object({
    device_name           = string
    volume_size           = number
    volume_type           = string
    delete_on_termination = bool
  }))
}