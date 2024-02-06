module "ecr-repo" {
  source = "./modules/ecr"
  repo_name = var.repo_name
  tags = var.tags
  image_immutable = var.image_immutable
  
}