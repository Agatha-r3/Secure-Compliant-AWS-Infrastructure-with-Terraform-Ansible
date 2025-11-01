
provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source     = "./modules/vpc"
  cidr_block = var.vpc_cidr
}

module "security" {
  source = "./modules/security"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source             = "./modules/ec2"
  subnet_id          = module.vpc.private_subnet_id
  security_group_ids = [module.security.ec2_sg_id]
  key_name           = var.key_name
}

module "rds" {
  source             = "./modules/rds"
  subnet_ids         = module.vpc.db_subnet_ids
  security_group_ids = [module.security.rds_sg_id]
}
