# requires "Account Settings:Read" scope for lookup to work
data "cloudflare_accounts" "current" {
  name = "danieladams456"
}
