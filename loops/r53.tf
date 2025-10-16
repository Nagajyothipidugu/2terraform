resource "aws_route53_record" "r53" {
  count = 4  
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}" #mongodb.devaws46.online
  type    = "A"
  ttl     = 300
  records = [aws_instance.roboshop[count.index].private_ip]
  allow_overwrite = true
}