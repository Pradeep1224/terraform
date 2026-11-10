resource "aws_instance" "condition" {
instance_type = var.environment == "dev" ? "t3.micro" : "t3.medium"
ami = "ami-0055977a6e828a4f4"
vpc_security_group_ids = [aws_security_group.condition.id]

}
resource "aws_security_group" "condition" {
    name = "condition"
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
        name = "roboshop-condition"
    }
}