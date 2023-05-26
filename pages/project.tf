resource "cloudflare_pages_project" "blog" {
  account_id        = local.account_id
  name              = "blog-danieladamstech"
  production_branch = "main"

  source {
    type = "github"
    config {
      owner                   = "danieladams456"
      repo_name               = "blog-danieladamstech"
      production_branch       = "main"
      preview_branch_includes = ["*"]
    }
  }

  build_config {
    build_command   = "hugo"
    destination_dir = "public"
  }

  deployment_configs {
    preview {
      always_use_latest_compatibility_date = true
      environment_variables = {
        HUGO_VERSION = "0.112.3"
      }
    }
    production {
      compatibility_date = "2023-03-14"
      environment_variables = {
        HUGO_VERSION = "0.112.3"
      }
    }
  }
}
