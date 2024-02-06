variable "repo_name" {
  description = "The name of the ECR repository"
  type = string
  
}
variable "image_immutable" {
  description = "Whether the image is immutable or not"
  type = bool
  default = true
  
}
variable "tags" {
  description = "The tags to apply to the ECR repository"
  type = map(string)
  default = {
    Terraform = "true"
  }
  
}
