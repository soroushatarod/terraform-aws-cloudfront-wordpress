# CLoudFront WordPress Terraform module

[![Help Contribute to Open Source](https://www.codetriage.com/soroushatarod/terraform-cloudfront-wordpress/badges/users.svg)](https://www.codetriage.com/soroushatarod/terraform-cloudfront-wordpress)

Terraform module, which creates the CloudFront distribution for a WordPress website with pre-configured settings based on the official AWS Whitepaper: https://docs.aws.amazon.com/whitepapers/latest/best-practices-wordpress/cloudfront-distribution-creation.html  


## Example

```hcl
module "cloudfront_wordpress" {
   source = "soroush/cloudfront_wordpress/aws"
   cnames = ["www.example.com"]
   domain_name = "example.com"
   origin_id = "E22XRTe7wQ72"
   enabled = true
   acm_certificate_arn = "arn:aws:acm:us-east-1:20:certificate/9489-60"
   tags = {
     name = "production"
   }
}
```



## Terraform version

Terraform version 0.11.7 or newer is required for this module to work.



<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cnames | the custom domain name which you would later on point the cname to  CloudFront DNS name   | string | `false` | yes |
| domain_name | The website root domain name | string | `false` | yes |
| origin_id | Unique identifer for the origin example: master_origin | string | `false` | yes |
| acm_certificate_arn | The SSL certificate ARN (Amazon Resource Name). This can be found on the “Certificate Manager” dashboard. | string | `false` | yes |
| origin_protocol_policy | Either one of them (http-only, https-only,match-viewer) | string | `match-viewer` | yes
| tags | Tags to assign to the distribution | string | `<map>` | yes |
| cookies_whitelisted_names | List of cookies to be whitelisted. By default has the WordPress cookies | string | `<list>` | no |
| http_port | The HTTP port which Cloudfront should connect to the origin | string | 80 | no |
| https_port | The HTTPS port which Cloudfront should connect to the origin | string | 443 | no |
| min_ttl | The minimum time you want objects to stay in CloudFront | string | 0 | no |
| default_ttl | The default amount of time an object is ina CloudFront cache before it sends another request in absence of Cache-Control | string | 300 | no |
| max_ttl | The maxium amount of seconds you want CloudFront to cache the object, before feching it from the origin | string | 31536000 | no |
| enabled | Whether the distribution is enabled or not | string | `true` | no |
| price_class | The price class to use for the distribution | string | PriceClass_All | no |
| origin_ssl_protocols | The SSL/TLS protocols to use when talking to the origin | list | `["TLSv1.2", "TLSv1.1"]` | no |
| minimum_protocol_version | The minimum version of the SSL protocol that you want CloudFront to use for HTTPS connections. | string | TLSv1.1_2016 | no |



<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->




## Authors

Maintained by [Soroush Atarod](https://github.com/soroushatarod). Find out more, please visit [InfinityPP](https://www.infinitypp.com/amazon-aws/terraform-cloudfront-wordpress-module/)

## License

Apache 2 Licensed. See LICENSE for full details.
