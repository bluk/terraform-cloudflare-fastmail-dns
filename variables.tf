variable "domain_name" {
  description = "The domain name to setup DNS records for like `example.com`"
}

variable "create_root_domain_txt" {
  description = "Determines if the root domain should have a TXT record. true/false"
  default     = true
}

variable "ttl" {
  description = "The TTL to use for the DNS records."
  default     = 3600
}
