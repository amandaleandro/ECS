provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"
}

module "ecs" {
  source            = "./modules/ecs"
  subnet_ids        = module.vpc.public_subnet_ids
  cluster_name      = "my-cluster"
  key_name          = "key-pair"
  ecs_ami_id        = "ami-0c55b159cbfafe1f0"
  vpc_id            = module.vpc.vpc_id
  security_group_id = module.vpc.security_group_id
}