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

# --- This is our new resource ---

# We use a random_id to make sure the topic name is always unique
resource "random_id" "topic_suffix" {
  byte_length = 4
}

# This creates a new Pub/Sub topic
resource "google_pubsub_topic" "atlantis_test_topic" {
  name = "atlantis-test-topic-${random_id.topic_suffix.hex}"
  
  labels = {
    "managed-by" = "atlantis"
  }
}