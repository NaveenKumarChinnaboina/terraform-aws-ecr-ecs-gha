variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  
}

variable "bucket_force_destroy" {
  description = "A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error"
  type        = bool
  default     = false
  
}
variable "tags" {
  description = "A mapping of tags to assign to the bucket"
  type        = map(string)
  default     = {}
  
}
variable "versioning_status" {
  description = "The versioning state of the bucket"
  type        = string
  default     = "Enabled"
  
}
variable "block_public_acls" {
  description = "A boolean that indicates whether Amazon S3 should block public ACLs for this bucket"
  type        = bool
  default     = true
  
}
variable "block_public_policy" {
  description = "A boolean that indicates whether Amazon S3 should block public bucket policies for this bucket"
  type        = bool
  default     = true
  
}
variable "ignore_public_acls" {
  description = "A boolean that indicates whether Amazon S3 should ignore public ACLs for this bucket"
  type        = bool
  default     = true
  
}
variable "restrict_public_buckets" {
  description = "A boolean that indicates whether Amazon S3 should restrict public bucket policies for this bucket"
  type        = bool
  default     = true
  
}
 
 variable "aws_s3_bucket_acl" {
   description = "The canned ACL to apply. Defaults to private"
   type        = string
   default     = "private"
   
 }
 variable "acceleration_status" {
   description = "The accelerate configuration of the bucket"
   type        = string
   default     = "Suspended"
   
 }