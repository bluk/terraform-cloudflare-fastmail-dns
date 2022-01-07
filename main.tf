resource "cloudflare_record" "mx_wildcard1" {
  zone_id  = var.zone_id
  name     = "*"
  type     = "MX"
  ttl      = var.ttl
  value    = "in1-smtp.messagingengine.com"
  priority = 10
}

resource "cloudflare_record" "mx_wildcard2" {
  zone_id  = var.zone_id
  name     = "*"
  type     = "MX"
  ttl      = var.ttl
  value    = "in2-smtp.messagingengine.com"
  priority = 20
}

resource "cloudflare_record" "mx_domain1" {
  zone_id  = var.zone_id
  name     = var.domain_name
  type     = "MX"
  ttl      = var.ttl
  value    = "in1-smtp.messagingengine.com"
  priority = 10
}

resource "cloudflare_record" "mx_domain2" {
  zone_id  = var.zone_id
  name     = var.domain_name
  type     = "MX"
  ttl      = var.ttl
  value    = "in2-smtp.messagingengine.com"
  priority = 20
}

resource "cloudflare_record" "mx_www1" {
  zone_id  = var.zone_id
  name     = "www"
  type     = "MX"
  ttl      = var.ttl
  value    = "in1-smtp.messagingengine.com"
  priority = 10
}

resource "cloudflare_record" "mx_www2" {
  zone_id  = var.zone_id
  name     = "www"
  type     = "MX"
  ttl      = var.ttl
  value    = "in2-smtp.messagingengine.com"
  priority = 20
}

resource "cloudflare_record" "root_domain_txt" {
  count   = var.create_root_domain_txt ? 1 : 0
  zone_id = var.zone_id
  name    = var.domain_name
  type    = "TXT"
  ttl     = var.ttl
  value   = "\"v=spf1 include:spf.messagingengine.com ?all\""
}

resource "cloudflare_record" "caldav_tcp_srv" {
  zone_id  = var.zone_id
  name     = "_caldav._tcp.${var.domain_name}"
  type     = "SRV"
  ttl      = var.ttl
  priority = "0"

  data {
    priority = "0"
    weight   = "0"
    port     = "0"
    service  = "_caldav"
    proto    = "_tcp"
    name     = var.domain_name
    target   = "."
  }
}

resource "cloudflare_record" "caldavs_tcp_srv" {
  zone_id  = var.zone_id
  name     = "_caldavs._tcp.${var.domain_name}"
  type     = "SRV"
  ttl      = var.ttl
  priority = "0"

  data {
    priority = "0"
    weight   = "1"
    port     = "443"
    service  = "_caldavs"
    proto    = "_tcp"
    name     = var.domain_name
    target   = "caldav.fastmail.com"
  }
}

resource "cloudflare_record" "carddav_tcp_srv" {
  zone_id  = var.zone_id
  name     = "_carddav._tcp.${var.domain_name}"
  type     = "SRV"
  ttl      = var.ttl
  priority = "0"

  data {
    priority = "0"
    weight   = "0"
    port     = "0"
    service  = "_cardddav"
    proto    = "_tcp"
    name     = var.domain_name
    target   = "."
  }
}

resource "cloudflare_record" "carddavs_tcp_srv" {
  zone_id  = var.zone_id
  name     = "_carddavs._tcp.${var.domain_name}"
  type     = "SRV"
  ttl      = var.ttl
  priority = "0"

  data {
    priority = "0"
    weight   = "1"
    port     = "443"
    service  = "_carddavs"
    proto    = "_tcp"
    name     = var.domain_name
    target   = "carddav.fastmail.com"
  }
}

resource "cloudflare_record" "imap_tcp_srv" {
  zone_id  = var.zone_id
  name     = "_imap._tcp.${var.domain_name}"
  type     = "SRV"
  ttl      = var.ttl
  priority = "0"

  data {
    priority = "0"
    weight   = "0"
    port     = "0"
    service  = "_imap"
    proto    = "_tcp"
    name     = var.domain_name
    target   = "."
  }
}

resource "cloudflare_record" "imaps_tcp_srv" {
  zone_id  = var.zone_id
  name     = "_imaps._tcp.${var.domain_name}"
  type     = "SRV"
  ttl      = var.ttl
  priority = "0"

  data {
    priority = "0"
    weight   = "1"
    port     = "993"
    service  = "_imaps"
    proto    = "_tcp"
    name     = var.domain_name
    target   = "imap.fastmail.com"
  }
}

resource "cloudflare_record" "pop3_tcp_srv" {
  zone_id  = var.zone_id
  name     = "_pop3._tcp.${var.domain_name}"
  type     = "SRV"
  ttl      = var.ttl
  priority = "0"

  data {
    priority = "0"
    weight   = "0"
    port     = "0"
    service  = "_pop3"
    proto    = "_tcp"
    name     = var.domain_name
    target   = "."
  }
}

resource "cloudflare_record" "pop3s_tcp_srv" {
  zone_id  = var.zone_id
  name     = "_pop3s._tcp.${var.domain_name}"
  type     = "SRV"
  ttl      = var.ttl
  priority = "10"

  data {
    priority = "10"
    weight   = "1"
    port     = "995"
    service  = "_pop3s"
    proto    = "_tcp"
    name     = var.domain_name
    target   = "pop.fastmail.com"
  }
}

resource "cloudflare_record" "submission_tcp_srv" {
  zone_id  = var.zone_id
  name     = "_submission._tcp.${var.domain_name}"
  type     = "SRV"
  ttl      = var.ttl
  priority = "0"

  data {
    priority = "0"
    weight   = "1"
    port     = "587"
    service  = "_submission"
    proto    = "_tcp"
    name     = var.domain_name
    target   = "smtp.fastmail.com"
  }
}

resource "cloudflare_record" "mail_a1" {
  zone_id = var.zone_id
  name    = "mail.${var.domain_name}"
  type    = "A"
  ttl     = var.ttl
  value   = "66.111.4.147"
}

resource "cloudflare_record" "mail_a2" {
  zone_id = var.zone_id
  name    = "mail.${var.domain_name}"
  type    = "A"
  ttl     = var.ttl
  value   = "66.111.4.148"
}

resource "cloudflare_record" "mx_mail1" {
  zone_id  = var.zone_id
  name     = "mail"
  type     = "MX"
  ttl      = var.ttl
  value    = "in1-smtp.messagingengine.com"
  priority = 10
}

resource "cloudflare_record" "mx_mail2" {
  zone_id  = var.zone_id
  name     = "mail"
  type     = "MX"
  ttl      = var.ttl
  value    = "in2-smtp.messagingengine.com"
  priority = 20
}

resource "cloudflare_record" "fm1_domainkey_cname" {
  zone_id = var.zone_id
  name    = "fm1._domainkey.${var.domain_name}"
  type    = "CNAME"
  ttl     = var.ttl
  value   = "fm1.${var.domain_name}.dkim.fmhosted.com"
}

resource "cloudflare_record" "fm2_domainkey_cname" {
  zone_id = var.zone_id
  name    = "fm2._domainkey.${var.domain_name}"
  type    = "CNAME"
  ttl     = var.ttl
  value   = "fm2.${var.domain_name}.dkim.fmhosted.com"
}

resource "cloudflare_record" "fm3_domainkey_cname" {
  zone_id = var.zone_id
  name    = "fm3._domainkey.${var.domain_name}"
  type    = "CNAME"
  ttl     = var.ttl
  value   = "fm3.${var.domain_name}.dkim.fmhosted.com"
}

resource "cloudflare_record" "dmarc" {
  zone_id = var.zone_id
  name    = "_dmarc"
  type    = "TXT"
  ttl     = var.ttl
  value   = "v=DMARC1; p=none; rua=mailto:dmarc@${var.domain_name}"
}
