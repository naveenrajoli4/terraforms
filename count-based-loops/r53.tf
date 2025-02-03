resource "aws_route53_record" "expence" {
  zone_id         = var.zoneid
  type            = "A"
  ttl             = "1"
  name            = "${var.ec2_names[count.index]}.${var.zonename}" # interpolatation
  records         = [aws_instance.my_instance[count.index].private_ip]
  count           = length(var.ec2_names)
  allow_overwrite = true
}

resource "aws_route53_record" "frontend" {
  zone_id         = var.zoneid
  type            = "A"
  ttl             = "1"
  name            = var.zonename # interpolatation
  records         = [aws_instance.my_instance[2].public_ip]
  allow_overwrite = true
}