resource "oci_artifacts_container_repository" "container_repository" {
    #Required
    compartment_id = var.compartment_id
    display_name = var.container_repository_display_name
}