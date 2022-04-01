resource "aws_security_group" "alb-sg" {
	name        = "vpc_alb_sg"
	description = "Allow web inbound traffic"
	vpc_id      = aws_vpc.vpc.id
	ingress {
		description      = "all traffic from VPC"
		from_port        = 0
		to_port          = 0
		protocol         = "-1"
		cidr_blocks      = ["0.0.0.0/0"]
	}
	egress {
		from_port        = 0
		to_port          = 0
		protocol         = "-1"
		cidr_blocks      = ["0.0.0.0/0"]
		}
	tags = {
		name = "VPCALBSG"
		environment = var.environment
	}
}