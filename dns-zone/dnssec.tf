resource "cloudflare_zone_dnssec" "danieladamstech" {
  zone_id = cloudflare_zone.danieladamstech.id
}
