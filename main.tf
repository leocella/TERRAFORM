module "vpc" {
    source = "./modules/vpc"
    project_name = var.project_name
}
module "loadbalancer" {
    source = "./modules/loadbalancer"
    # Removed vpc_id as it is not expected by the frontend module
    # subnet_pub01 removed as it is not expected by the frontend module
    subnet_pub02 = module.vpc.subnet_pub02
}

module "frontend"{
    source = "./modules/frontend"
    # Removed vpc_id as it is not expected by the frontend module
    subnet_pub01 = module.vpc.subnet_pub01
    subnet_pub02 = module.vpc.subnet_pub02
    subnet_priv01 = module.vpc.subnet_priv01
    subnet_priv02 = module.vpc.subnet_priv02
    project_name = var.project_name
}

module "backend" {
    source = "./modules/backend"
    # Removed vpc_id as it is not expected by the frontend module
    subnet_priv01 = module.vpc.subnet_priv01
    project_name = var.project_name
}