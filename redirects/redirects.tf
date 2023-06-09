resource "cloudflare_ruleset" "root_to_blog" {
  zone_id     = data.cloudflare_zone.danieladamstech.id
  name        = "root-to-blog"
  description = "Redirect root domain to blog subdomain"
  kind        = "zone"
  phase       = "http_request_dynamic_redirect"

  rules {
    action = "redirect"
    action_parameters {
      from_value {
        status_code = 302
        target_url {
          value = "https://blog.danieladamstech.com"
        }
      }
    }
    expression  = "(http.host eq \"danieladamstech.com\")"
    description = "Redirect root domain to blog subdomain"
    enabled     = true
  }
}
