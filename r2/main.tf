terraform {
  required_version = "~> 1.4"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }

  cloud {
    organization = "danieladamstech"
    workspaces {
      name = "cloudflare-r2"
    }
  }
}

provider "cloudflare" {}
