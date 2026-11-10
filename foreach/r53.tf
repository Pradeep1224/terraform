resource "aws_route53_record" "roboshop" {
  for_each = aws_instance.roboshop # ec2 output is input
  zone_id = var.zone
  name = "${each.key}.${var.domain_name}"
  ttl = 1
  type = "A"
  records = [each.value.private_ip]
  allow_overwrite = true
}

resource "aws_route53_record" "frontend" {
  count = contains(keys(var.instances),"frontend") ? 1 : 0
  zone_id = var.zone
  name = "${var.domain_name}"
  ttl = 1
  type = "A"
  records = [lookup(aws_instance.roboshop,"frontend").public_ip]
   allow_overwrite = true
}