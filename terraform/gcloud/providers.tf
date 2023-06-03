terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.67.0"
    }
  }
}

provider "google" {
  project = var.gcloud_project
  region  = "europe-central2"
  zone    = "europe-central2-a"
}