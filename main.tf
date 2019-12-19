provider "aws" {
  region = "${var.region}"
}

module "static-site" {
  source = "./modules/site"
  region = var.region
  domain = var.domain
  zone_id = var.zone_id
}

module "pipeline" {
  source = "./modules/pipeline"
  region = var.region
  bucket_name = module.site.bucket_name
  cloudfront_distribution_id = module.site.cloudfront_distribution_id
  app_name = var.app_name
  git_repository_owner = var.git_repository_owner
  git_repository_name = var.git_repository_name
  git_repository_branch = var.git_repository_branch
}
