data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = var.ec2_tags
  dynamic "ebs_block_device" {
    for_each = var.blocks_device
    content {
      device_name           = ebs_block_device.value["device_name"]
      volume_size           = ebs_block_device.value["volume_size"]
      volume_type           = ebs_block_device.value["volume_type"]
      delete_on_termination = ebs_block_device.value["delete_on_termination"]
    }
  }

  depends_on = [
    aws_s3_bucket.bucket
  ]
}

resource "aws_eip" "lb" {
  instance = aws_instance.web.id
  vpc      = true
}