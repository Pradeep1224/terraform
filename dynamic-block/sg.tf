resource "aws_security_group" "dynamic-block" {
    name = "dynamic-demo"
    description = "A sg group"



    dynamic "ingress" {
        for_each = var.ingress-rules
        content {
        from_port = ingress.value.port
        to_port = ingress.value.port
        protocol = "tcp"
        cidr_blocks = ingress.value.cidr_blocks
    }
    }

      egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        name = "dynamic sg"
    }
}
