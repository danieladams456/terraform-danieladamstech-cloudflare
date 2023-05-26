resource "cloudflare_pages_domain" "blog" {
  account_id   = local.account_id
  project_name = cloudflare_pages_project.blog.name
  domain       = "blog.danieladamstech.com"
}
