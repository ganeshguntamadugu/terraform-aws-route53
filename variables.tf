#Route53
variable "zone_name" {
  type = string
}

variable "zone_id" {
  
}

variable "route53_records" {
  type = map(object({
    name    = string
    type    = string
    ttl     = number
    records = list(string)
  }))
}