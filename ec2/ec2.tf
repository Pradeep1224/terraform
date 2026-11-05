# resource "aws_instance" "example" {
# instance_type = "t3.micro"
# ami = "ami-0055977a6e828a4f4"
# vpc_security_group_ids = [aws_security_group.example.id]

# }
resource "aws_security_group" "example" {
    name = "example"
    description = "Allow inbound and outbound traffic"
    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
      egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        name = "roboshop1"
    }
}