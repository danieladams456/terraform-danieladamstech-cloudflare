resource "cloudflare_pages_domain" "blog" {
  account_id   = data.cloudflare_accounts.current.id
  project_name = cloudflare_pages_project.basic_project.name
  domain       = "blog.danieladamstech.com"
}
