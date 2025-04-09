module "prod_vpc_1" {
  source             = "../modules/network"
  vpc_cidr           = "192.168.0.0/16"
  vpc_name           = "prod_vpc_1"
  environment        = "Production"
  public_cird_block  = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
  private_cird_block = ["192.168.10.0/24", "192.168.20.0/24", "192.168.30.0/24"]
  azs                = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

module "prod_sg_1" {
  source        = "../modules/security-group"
  vpc_name      = module.prod_vpc_1.vpc_name
  vpc_id        = module.prod_vpc_1.vpc_id
  ingress_value = ["80", "8080", "443", "8443", "22", "3306", "1900", "1443"]
  environment   = module.prod_vpc_1.environment
}