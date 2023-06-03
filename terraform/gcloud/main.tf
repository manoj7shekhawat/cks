module "compute" {
  source = "./modules/compute"

  service_account   = var.service_account
  compute_instances = var.compute_instances
}