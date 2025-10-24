terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "orca-lab01" # <-- REPLACE THIS
  region  = "us-central1"
}

resource "random_id" "id" {
  byte_length = 8
}

#test