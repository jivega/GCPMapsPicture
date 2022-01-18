// Configure the Google Cloud provider
provider "google" {
 credentials = file("CREDENTIALS_FILE.json")
 project     = "gcpmapspicture"
 region      = "us-west1"
}

resource "google_storage_bucket" "static-site" {
  name          = "gcpmapspicturebucket"
  location      = "US"
  force_destroy = true
  uniform_bucket_level_access = true
}