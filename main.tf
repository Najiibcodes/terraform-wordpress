module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  name     = var.vpc_name
}

module "subnet" {
  source      = "./modules/subnet"
  vpc_id      = module.vpc.vpc_id
  subnet_cidr = var.subnet_cidr
  name        = var.subnet_name
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
  name   = var.sg_name
}

module "ec2" {
  source             = "./modules/ec2"
  ami                = var.ami
  instance_type      = var.instance_type
  subnet_id          = module.subnet.subnet_id
  security_group_ids = [module.security_group.security_group_id]
  
 
  user_data = file(var.user_data)
}


module "eip" {
  source      = "./modules/eip"
  instance_id = module.ec2.instance_id
  name        = var.eip_name

  depends_on = [module.ec2]  
}


module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
  name   = var.igw_name
}

module "route_table" {
  source              = "./modules/route_table"
  vpc_id              = module.vpc.vpc_id
  internet_gateway_id = module.internet_gateway.internet_gateway_id
  subnet_id           = module.subnet.subnet_id
  name                = var.route_table_name
}
