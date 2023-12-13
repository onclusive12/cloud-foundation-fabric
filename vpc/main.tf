module "vpc" {
  source     = "../modules/net-vpc"
  project_id = var.project_id
  name       = var.name
  subnets = [
    {
      ip_cidr_range = var.subnets["ip_cidr_range"]
      name          = var.subnets["name"]
      region        = var.subnets["region"]
    }
  ]
}
# tftest modules=1 resources=5 inventory=simple.yaml e2e
