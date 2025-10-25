terraform {
  backend "gcs" {
    bucket = "orca-terraform-state-bucket"
    prefix = "tribagus6/atlantis-test-repo"    
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
<<<<<<< HEAD
=======

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

# Creates a new GCS bucket 🪣
resource "google_storage_bucket" "atlantis_demo_bucket" {
  # Uses the random suffix to create a unique name
  name     = "atlantis-demo-bucket-${random_id.bucket_suffix.hex}"
  location = "US"

  # Enforces uniform bucket-level IAM
  uniform_bucket_level_access = true

  labels = {
    "managed-by" = "atlantis-gcs-backend-test"
  }
}
>>>>>>> af13329 (change the backend to gcs orca-labhost)
