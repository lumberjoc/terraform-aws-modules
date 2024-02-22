module "vpc" {
  source    = "./modules/vpc"
  vpc_cider = var.vpc_cider
}