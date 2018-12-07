# terraform-cloudflare-fastmail-dns

This is an unofficial [Terraform][terraform] module which creates
[Cloudflare DNS][cloudflare] records to setup a domain with
[FastMail][fastmail].

Since this is not an official provider and does not have
guarantees about backwards compatibility, it is recommended that
you fork this repository or copy the code into your own repository
after reviewing the code.

## Example Usage

In your Terraform file:

```
module "example_fastmail-dns" {
  source  = "bluk/fastmail-dns/cloudflare"
  version = "0.2.1"

  domain_name = "example.com"
}
```

[terraform]: https://www.terraform.io
[cloudflare]: https://www.cloudflare.com
[fastmail]: https://www.fastmail.com
