# resource "aws_route53_zone" "main" {
#   name = var.zone_name
# }

resource "aws_route53_record" "records" {
for_each = var.route53_records

  zone_id = var.zone_id
  name    = each.value.name
  type    = each.value.type
  ttl     = each.value.ttl

  records = each.value.records
}