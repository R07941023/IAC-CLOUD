variable "cloudflare_api_token" {
  description = "Cloudflare API Token"
  type        = string
  sensitive   = true
}

variable "zone_id" {
  description = "zone id (get from cloudflare ui)"
  type        = string
}

variable "ip" {
  description = "domain ip"
  type        = string
}

variable "ssl_mode" {
  description = "SSL mode: full, flexible, strict"
  type        = string
  default     = "full"
}

variable "subdomain_map" {
  description = "map of subdomain => proxied bool"
  type        = map(bool)
}
