resource "oci_artifacts_repository" "artifacts_repository" {
    #Required
    compartment_id = var.compartment_id
    is_immutable = var.repository_is_immutable
    repository_type = var.repository_repository_type
    display_name = var.artifact_repository_display_name
}