resource "cloudflare_pages_project" "basic_project" {
  account_id        = local.account_id
  name              = "blog-danieladamstech"
  production_branch = "main"
}
