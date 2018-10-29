# terraform-cloudflare-fastmail-dns

This is an unofficial [Terraform][terraform] module which creates
[Cloudflare DNS][cloudflare] records to setup a domain with
[FastMail][fastmail].

## Example Usage

In your Terraform file:

```
module "example_fastmail" {
  source = "github.com/bluk/terraform-cloudflare-fastmail-dns"
  domain_name = "example.com"
}
```

[terraform]: https://www.terraform.io
[cloudflare]: https://www.cloudflare.com
[fastmail]: https://www.fastmail.com
