resource "aws_internet_gateway" "web-app-gateway" {
	vpc_id = aws_vpc.vpc.id
tags = {
		environment = var.environment
		name = "Web App Gateway"
	}
}