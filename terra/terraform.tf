terraform {
  required_providers {
    oci = {
      source  = "oci"
      version = ">= 6.16.0"
    }
  }
  required_version = ">=1.9"

  backend "s3" {
    bucket    = "stateBucket"
    key       = "terraform.tfstate"
    region    = "us-ashburn-1"
    endpoints = { s3 = "https://idjadpj2c6c4.compat.objectstorage.us-ashburn-1.oci.customer-oci.com" }

    profile                     = "default"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
    skip_s3_checksum            = true
    use_path_style              = true
  }
}