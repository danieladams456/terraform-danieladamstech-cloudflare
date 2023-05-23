resource "cloudflare_record" "cname" {
  zone_id = var.zone_id
  name    = var.name
  type    = "CNAME"
  value   = var.value
  ttl     = 1
  proxied = true
}
