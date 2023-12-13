module "vpc" {
  source     = "../modules/net-vpc"
  project_id = var.project_id
  name       = var.name
  subnets = var.subnets
}
# tftest modules=1 resources=5 inventory=simple.yaml e2e
