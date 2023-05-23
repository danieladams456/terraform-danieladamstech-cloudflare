resource "cloudflare_pages_domain" "blog" {
  account_id   = local.account_id
  project_name = cloudflare_pages_project.basic_project.name
  domain       = "blog.danieladamstech.com"
}
