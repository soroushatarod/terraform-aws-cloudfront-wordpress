output "id" {
  description = "The identifier for the distribution"
  value       = aws_cloudfront_distribution.cdn.id
}

output "arn" {
  description = "Amazon Resource Name for the distribution"
  value       = aws_cloudfront_distribution.cdn.arn
}

output "hosted_zone_id" {
  description = "The CloudFront Route 53 zone ID that can be used to route an Alias Resource Record Set"
  value       = aws_cloudfront_distribution.cdn.hosted_zone_id
}

output "domain_name" {
  description = "The domain name for the distribution"
  value       = aws_cloudfront_distribution.cdn.domain_name
}
