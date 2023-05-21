# DNS record must exist to reach redirects, docs say to use 192.0.2.1
# https://developers.cloudflare.com/pages/how-to/www-redirect/
resource "cloudflare_record" "apex" {
  zone_id = data.cloudflare_zone.danieladamstech.id
  name    = "@"
  value   = "192.0.2.1"
  type    = "A"
  ttl     = 1
  proxied = true
}
