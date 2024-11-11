locals {
    name= "amar"
    marks = ["a","b","c"]
    #xMieAJZtaq82NPnddfJtCr2HSB/VirOh9OqRfjVJTbY=
    #7da1221f22878dd111fe83778eb8fe8a81a7fe7e

}
variable "amap"{
    type = map 
    default = {
        "name" = "amarnath"
        "native" = "pebbair"
    }
}
variable "user_names" {
  description = "Create IAM users with these names"
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
}



/*resource "null_resource" "delete" {
  provisioner "local-exec" {
    command = "rm *.txt"
  }
} */

resource "null_resource" "create" {
  for_each = toset(local.marks)


  provisioner "local-exec" { 

    command = "echo hey ${each.value} : ${upper("amar")} >> ${each.value}.txt"
    
  }
 lifecycle {
    create_before_destroy = true
  }
}

data "oci_objectstorage_namespace" "test_namespace" {

    #Optional
    compartment_id = var.compartment_id
}

resource "oci_objectstorage_bucket" "test_bucket" {
    #Required
    compartment_id = var.compartment_id
    name = "terraform"
    namespace = data.oci_objectstorage_namespace.test_namespace.namespace

    access_type = "ObjectRead"
}

locals {
 string1       = "str1"
 string2       = "str2"
 int1          = 3
 apply_format  = format("This is %s", local.string1)
 apply_format2 = format("%s_%s_%d", local.string1, local.string2, local.int1)
}

