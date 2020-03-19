variable "zone_id" {
  type        = string
  description = "The zone id to setup DNS records for"
}

variable "domain_name" {
  type        = string
  description = "The domain name zone id to setup DNS records for like `example.com`"
}

variable "create_root_domain_txt" {
  type        = bool
  description = "Determines if the root domain should have a TXT record. true/false"
  default     = true
}

variable "ttl" {
  type        = number
  description = "The TTL to use for the DNS records."
  default     = 3600
}
