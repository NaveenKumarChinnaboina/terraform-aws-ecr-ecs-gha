variable "ecr_repo_names" {
    type = list(string)
    default = null
}
variable "image_tag_mutability" {
    type = string
    default = "IMMUTABLE"
}
variable "encryption_type" {
    type = string
    default = "KMS"
}
variable "common_tags" {
    type = map(string)
    default = {
        Name = "ecr_demo_TechWithNani"
        Environment = "Dev"
    }
}
variable "scan_on_push" {
    type = bool
    default = true
  
}