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
  project     = "onclusive-poc"
  region      = "asia-south1"
}


