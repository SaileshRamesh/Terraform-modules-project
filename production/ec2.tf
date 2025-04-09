module "prod_ec2_1" {
  source      = "../modules/compute"
  environment = module.prod_vpc_1.environment
  amis = {
    us-east-1 = "ami-0866a3c8686eaeeba"
    us-east-2 = "ami-0ea3c35c5c3284d82"
  }
  aws_region           = var.aws_region
  instance_type        = "t2.nano"
  key_name             = "my_personal_key_pair"
  iam_instance_profile = module.prod_iam_1.instprofile
  public_subnets       = module.prod_vpc_1.public-subnet
  private_subnets      = module.prod_vpc_1.private-subnets
  sg_id                = module.prod_sg_1.sg_id
  vpc_name             = module.prod_vpc_1.vpc_name
  elb_listener         = module.prod_elb_1.elb_listner
  elb_listener_public  = module.prod_elb_1_public.elb_listner
}