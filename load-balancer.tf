resource "aws_lb" "app" {
  name               = "two-tier-alb"
  internal           = false
  load_balancer_type = "application"

  subnets = [
    aws_subnet.public_a.id,
    aws_subnet.public_b.id
  ]

  security_groups = [
    aws_security_group.alb.id
  ]

  tags = {
    Name = "two-tier-alb"
  }
}

resource "aws_lb_target_group" "app" {
  name     = "two-tier-app-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id

  health_check {
    enabled  = true
    path     = "/"
    protocol = "HTTP"
  }

  tags = {
    Name = "two-tier-app-target-group"
  }
}

resource "aws_lb_target_group_attachment" "app" {
  target_group_arn = aws_lb_target_group.app.arn
  target_id        = aws_instance.app.id
  port             = 80
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.app.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app.arn
  }
}