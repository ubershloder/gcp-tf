terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.32.0"
    }
  }
}

provider "google" {
  credentials = file("ubergcp-ae913b14fc87.json")
  region      = "us-central1"
  zone        = "us-central1-a"
  project     = "ubergcp"
}