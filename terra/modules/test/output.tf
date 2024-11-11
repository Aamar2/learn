output "bucket_status"{
    description = "op"
    value = oci_objectstorage_bucket.test_bucket.name
}

output "apply_format" {
 value = local.apply_format
}
output "apply_format2" {
 value = local.apply_format2
}

