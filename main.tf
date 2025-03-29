module "vpc" {
    source = "./modules/vpc"
    project_name = var.project_name
}
module "loadbalancer" {
    source = "./modules/loadbalancer"
    vpc_id = module.vpc.vpc_id
    subnet_pub01 = module.vpc.subnet_pub01
    subnet_pub02 = module.vpc.subnet_pub02
}