terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.7.0"
    }
  }
  backend "gcs" {
    bucket = "fast-fabric-bucket"

  }

}
provider "google" {
  project     = var.project_id
  region      = var.region
}


