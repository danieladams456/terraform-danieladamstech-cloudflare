# DNS record must exist to reach redirects, docs say to use 192.0.2.1
# https://developers.cloudflare.com/pages/how-to/www-redirect/
resource "cloudflare_record" "pages_a" {
  for_each = local.pages_records
  zone_id  = data.cloudflare_zone.danieladamstech.id
  name     = each.value
  value    = "192.0.2.1"
  type     = "A"
  ttl      = 1
  proxied  = true
}

resource "cloudflare_record" "pages_aaaa" {
  for_each = local.pages_records
  zone_id  = data.cloudflare_zone.danieladamstech.id
  name     = each.value
  value    = "100::"
  type     = "AAAA"
  ttl      = 1
  proxied  = true
}
