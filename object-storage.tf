resource "oci_objectstorage_bucket" "bucket" {
    compartment_id = var.compartment_id
    name = var.bucket_name
    namespace = var.bucket_namespace
    object_events_enabled = true
}