resource "cloudflare_zone_dnssec" "danieladamstech" {
  zone_id = data.cloudflare_zone.danieladamstech.id
}
