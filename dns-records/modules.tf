module "apex_redirect" {
  source = "./redirect"

  zone_id = data.cloudflare_zone.danieladamstech.id
  name    = "@"
}

module "blog_cname" {
  source = "./cname"

  zone_id = data.cloudflare_zone.danieladamstech.id
  name    = "blog"
  value   = "blog-danieladamstech.pages.dev"
}
