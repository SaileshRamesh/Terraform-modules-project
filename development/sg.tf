module "dev_sg_1" {
  source        = "../modules/security-group"
  vpc_name      = module.dev_vpc_1.vpc_name
  vpc_id        = module.dev_vpc_1.vpc_id
  ingress_value = ["80", "8080", "443", "8443", "22", "3306", "1900", "1443"]
  environment   = module.dev_vpc_1.environment
}