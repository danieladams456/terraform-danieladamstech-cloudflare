resource "cloudflare_pages_project" "basic_project" {
  account_id        = data.cloudflare_accounts.current.id
  name              = "blog-danieladamstech"
  production_branch = "main"
}
