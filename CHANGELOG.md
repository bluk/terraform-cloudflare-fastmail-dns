# CHANGELOG

## v0.6.0

* Updated for Terraform `0.15`. Removed `cloudflare` provider declaration.

## v0.5.0

* Update `required_provider` block for Terraform 0.14.
* Remove `adsp_domainkey_txt` and `client_smtp_srv` records
  which are not documented on Fastmail docs anymore. Thanks
  to @Ashtonian.
* Fix target for non-SSL service domains from `false` to `.`
  Thanks to @Ashtonian.
* Add DMARC record policy. Thanks to @Ashtonian.

## v0.4.0

* `terraform 0.13upgrade` to add `versions.tf` file.

## v0.3.0

* Update for Cloudflare provider v2.x and Terraform v0.12.x.

## v0.2.2

* Update documentation and remove unused `provider` variable.

## v0.2.1

* Fix using a non-default provider.

## v0.2.0

* Add `provider` and `ttl` options to enable customization.

## v0.1.0

* Initial release.
