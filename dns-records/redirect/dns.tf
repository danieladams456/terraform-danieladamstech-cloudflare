resource "cloudflare_record" "redirect" {
  for_each = local.type_value

  zone_id = var.zone_id
  name    = var.name
  type    = each.key
  value   = each.value
  ttl     = 1
  proxied = true
}
