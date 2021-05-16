instance_type = "t3.micro"

ec2_tags = {
  Name        = "hello-word-ec2"
  Environment = "development"
}

bucket_name = "hello-word-s3"

bucket_tags = {
  Name        = "hello-word-s3"
  Environment = "development"
}

blocks_device = [
    {
        device_name           = "/dev/sdg"
        volume_size           = 5
        volume_type           = "gp2"
        delete_on_termination = true
    },
    {
        device_name           = "/dev/sdh"
        volume_size           = 10
        volume_type           = "gp2"
        delete_on_termination = true
    }
]
