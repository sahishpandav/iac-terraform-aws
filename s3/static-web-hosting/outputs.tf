output "bucket_id" {
  description = "Name of the bucket"
  value       = aws_s3_bucket.example.id
}

output "bucket_arn" {
  description = "ARN of the bucket"
  value       = aws_s3_bucket.example.arn
}