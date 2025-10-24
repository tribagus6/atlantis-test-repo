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

resource "google_storage_bucket" "atlantis_test_bucket" {
  name     = "atlantis-test-bucket-${random_id.id.hex}"
  location = "US"

  uniform_bucket_level_access = true

  labels = {
    "managed-by" = "atlantis"
  }
}

resource "random_id" "id" {
  byte_length = 8
}

#test