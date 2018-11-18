variable "cookies_whitelisted_names" {
  description = "List of cookies to be whitelisted."
  type        = "list"

  default = [
    "comment_author_*",
    "comment_author_email_*",
    "comment_author_url_*",
    "wordpress_*",
    "wordpress_logged_in_*",
    "wordpress_test_cookie",
    "wp-settings-*",
  ]
}

variable "cnames" {
  description = "CNAME records which you would later add the cloudfront DNS name to it"
  type        = "list"
}

variable "tags" {
  description = "Tags to identify the Cloudfront distribution"
  type        = "map"
}

variable "domain_name" {
  description = "The domain of your origin. This is usually the root domain example.com "
}

variable "origin_id" {
  description = "Unique identifier of the origin"
}

variable "enabled" {
  description = "Set the status of the distribution"
}

variable "acm_certificate_arn" {
  description = "SSL Certificate ARN"
}

variable "http_port" {
  description = "The HTTP port which Cloudfront should connect to the origin"
  default     = 80
}

variable "https_port" {
  description = "The HTTPS port which the "
  default     = 443
}

variable "origin_protocol_policy" {
  description = "Either one of them (http-only, https-only,match-viewer) "
}

variable "min_ttl" {
  description = "The minimum time you want objects to stay in CloudFront"
  default     = 0
}

variable "default_ttl" {
  description = "The default amount of time an object is ina CloudFront cache before it sends another request in absence of Cache-Control"
  default     = 300
}

variable "max_ttl" {
  description = "The maxium amount of seconds you want CloudFront to cache the object, before feching it from the origin"
  default     = 31536000
}

variable "price_class" {
  description = "The price class for this distribution. One of PriceClass_All, PriceClass_200, PriceClass_100"
  default     = "PriceClass_All"
  type        = "string"
}

# variable "acm_certificate_arn" {}

