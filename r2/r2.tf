resource "cloudflare_r2_bucket" "images" {
  account_id = local.account_id
  name       = "images"
  location   = "ENAM"
}

# Need to use the AWS provider to set up CORS later: https://developers.cloudflare.com/r2/examples/terraform-aws/
# Allowed domains:
#  https://blog.danieladamstech.com
#  https://blog-danieladamstech.pages.dev
#  https://*.blog-danieladamstech.pages.dev
