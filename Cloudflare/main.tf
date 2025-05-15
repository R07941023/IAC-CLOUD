provider "cloudflare" {
  // zone -> zone setting -> edit
  // zone -> zone -> edit
  // zone -> DNS -> edit
  api_token = var.cloudflare_api_token
}

resource "cloudflare_record" "subdomains" {
  for_each = var.subdomain_map

  zone_id         = var.zone_id
  name            = each.key
  type            = "A"
  content         = var.ip
  ttl             = 1
  proxied         = each.value
  allow_overwrite = true
}

resource "cloudflare_zone_settings_override" "ssl_settings" {
  zone_id = var.zone_id

  settings {
    ssl = var.ssl_mode
  }
}
