module "vpc" {
  source     = "./modules/net-vpc"
  project_id = "onclusive-poc"
  name       = "my-network"
  subnets = [
    {
      ip_cidr_range = "10.0.0.0/24"
      name          = "production"
      region        = "asia-south1"
      secondary_ip_ranges = {
        pods     = "172.16.0.0/20"
        services = "192.168.0.0/24"
      }
    },
    {
      ip_cidr_range = "10.0.16.0/24"
      name          = "production"
      region        = "asia-south1"
    }
  ]
}
# tftest modules=1 resources=5 inventory=simple.yaml e2e
