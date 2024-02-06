resource "aws_ecr_repository" "ecr_demo_TechWithNani" {
    name     = each.value
    for_each = toset(var.ecr_repo_names)
    image_tag_mutability = var.image_tag_mutability
    encryption_configuration {
        encryption_type = var.encryption_type
    }
    image_scanning_configuration {
        scan_on_push = var.scan_on_push
    }
    tags = var.common_tags
}