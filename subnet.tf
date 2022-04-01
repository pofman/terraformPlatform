# Create 1st web subnet 
resource "aws_subnet" "public-subnet-1" {
	vpc_id                  = aws_vpc.vpc.id
	cidr_block              = var.subnet_prefix[0].cidr_block
	map_public_ip_on_launch = true
	availability_zone       = "us-east-1a"
	tags = {
		name        = var.subnet_prefix[0].name
		environment = var.environment
	}
}
# Create 2nd web subnet 
resource "aws_subnet" "public-subnet-2" {
	vpc_id                  = aws_vpc.vpc.id
	cidr_block              = var.subnet_prefix[1].cidr_block
	map_public_ip_on_launch = true
	availability_zone       = "us-east-1b"
	tags = {
		name        = var.subnet_prefix[1].name
		environment = var.environment
	}
}
#  Creating 1st application subnet 
resource "aws_subnet" "application-subnet-1" {
	vpc_id                  = aws_vpc.vpc.id
	cidr_block              = var.subnet_prefix[2].cidr_block
	map_public_ip_on_launch = false
	availability_zone       = "us-east-1a"
	tags = {
		name        = var.subnet_prefix[2].name
		environment = var.environment
	}
}
#  Creating 2nd application subnet 
resource "aws_subnet" "application-subnet-2" {
	vpc_id                  = aws_vpc.vpc.id
	cidr_block              = var.subnet_prefix[3].cidr_block
	map_public_ip_on_launch = false
	availability_zone       = "us-east-1b"
	tags = {
		name        = var.subnet_prefix[3].name
		environment = var.environment
	}
}
#  Database Private Subnet
resource "aws_subnet" "database-subnet-1" {
	vpc_id            = aws_vpc.vpc.id
	cidr_block        = var.subnet_prefix[4].cidr_block
	availability_zone = "us-east-1a"
	tags = {
		environment = var.environment
		name        = var.subnet_prefix[4].name
	}
}
#  Database Private Subnet
resource "aws_subnet" "database-subnet2" {
	vpc_id            = aws_vpc.vpc.id
	cidr_block        = var.subnet_prefix[5].cidr_block
	availability_zone = "us-east-1b"
	tags = {
		environment = var.environment
		name        = var.subnet_prefix[5].name
	}
}
