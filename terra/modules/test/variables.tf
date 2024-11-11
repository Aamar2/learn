
variable "compartment_id" {
  type        = string
  default     = "ocid1.tenancy.oc1..aaaaaaaatybtdg7agihbztc2ga4jyiipwbxw2vnl6fes3snbt3d7uwistxba"
}

variable "bucket_namespace" {
  type        = string
  default     = "psmsvc1"
}

variable "instance_object" {
    description = "instance attributes"
    type = object({
      name = string
      no = number
      subs = list(number)
      passed = bool
    })

    default = {
      name = "amar"
      no = "1222"
      subs = [1,2]
      passed = false
    }
}
