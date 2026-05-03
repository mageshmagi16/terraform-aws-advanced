  module "vpc" {
    source     = "./modules/vpc"
    cidr_block = "10.0.0.0/16"
  }

  module "security_group" {
    source = "./modules/security_group"
    vpc_id = module.vpc.vpc_id
  }

  module "ec2" {
    source         = "./modules/ec2"
    subnet_id      = module.vpc.subnet_ids[0]
    sg_id          = module.security_group.sg_id
    instance_type  = var.instance_type
  }

  module "alb" {
    source  = "./modules/alb"
    vpc_id  = module.vpc.vpc_id
    subnets = module.vpc.subnet_ids
  }

  module "iam" {
    source    = "./modules/iam"
    role_name = "ec2-role"
  }

  module "s3" {
    source      = "./modules/s3"
    bucket_name = var.bucket_name
  }