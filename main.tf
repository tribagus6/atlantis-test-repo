terraform {
  backend "gcs" {
    bucket  = "orca-terraform-state-bucket"
    prefix  = "tribagus6/atlantis-test-repo"
    project = "orca-labhost"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "orca-lab01"
  region  = "us-central1"
}

