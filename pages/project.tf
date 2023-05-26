resource "cloudflare_pages_project" "blog" {
  account_id        = local.account_id
  name              = "blog-danieladamstech"
  production_branch = "main"

  source {
    type = "github"
    config {
      owner             = "danieladams456"
      repo_name         = "blog-danieladamstech"
      production_branch = "main"
    }
  }
}
