provider "oci" {
  auth = "SecurityToken"
  config_file_profile = "test"
  region = "us-phoenix-1"
}

module "test_module" {
  source = "./modules/test"
}