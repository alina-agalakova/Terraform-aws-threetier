resource "aws_route53_record" "wordpress" {
  zone_id = var.zone_id
  name    = "wordpress.${var.domain_name}"
  type    = "CNAME"
  ttl     = "300"
  records = [aws_alb.application-lb.dns_name]
}
variable "domain" {
  type = string

}