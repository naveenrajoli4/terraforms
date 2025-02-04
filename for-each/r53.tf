resource "aws_route53_record" "my" {
  for_each = aws_instance.my_instance

    zone_id         = var.zoneid
    type            = "A"
    ttl             = "1"
    name            = each.key == "frontend" ? var.zonename : "${each.key}.${var.zonename}"
    records         = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
    allow_overwrite = true

}

