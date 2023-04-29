resource "aws_security_group" "wordpress" {
  name_prefix = "wordpress-sg"
  vpc_id      = aws_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "wordpress" {
  ami           = "ami-0db245b76e5c21ca1" # Ubuntu 20.04 LTS
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.wordpress.id]

  # Launch the instance in the public subnet
  subnet_id = aws_subnet.public.id
  # Use the Ubuntu user data script to install Apache and WordPress
  user_data = file("script.sh")

  # Assign a public IP to the instance
  associate_public_ip_address = true

  tags = {
    Name = "wordpress"
  }
}

# resource "aws_key_pair" "deployer" {
#   key_name   = "deployer-key"
#   public_key = file("~/.ssh/id_rsa.pub")
# }

# Create a public subnet in the default VPC
resource "aws_subnet" "public" {
  cidr_block = "10.0.1.0/24"

  vpc_id = aws_vpc.default.id

  availability_zone = "us-west-2a"

  tags = {
    Name = "public"
  }
}

# Create a default VPC
resource "aws_vpc" "default" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "default"
  }
}

