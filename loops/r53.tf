resource "aws_route53_record" "roboshop" {
  count = 3
  zone_id = var.zone
  name = "${var.instances[count.index]}.${var.domain_name}"
  ttl = 1
  type = "A"
  records = [aws_instance.roboshop[count.index].private_ip]
  allow_overwrite = true
}

resource "aws_route53_record" "frontend" {
  count = contains(var.instances, "frontend") ? 1 : 0
  zone_id = var.zone
  name = "${var.domain_name}"
  ttl = 1
  type = "A"
  records = [aws_instance.roboshop[index(var.instances,"frontend")].public_ip]
   allow_overwrite = true
}