resource "aws_lb" "EM1-ALB" {
  name               = "EM1LB"
  internal           = false
  load_balancer_type = "application"
  vpc_id             = "EM1-VPC"
  subnets            = ["private_subnet"]
  security_groups    = ["sg-edcd9784", "sg-edcd9785"]


  enable_deletion_protection = true

  access_logs {
    bucket  = aws_s3_bucket.lb_logs.bucket
    prefix  = "test-lb"
    enabled = true
  }

  tags = {
    Environment = "production"
  }
}
