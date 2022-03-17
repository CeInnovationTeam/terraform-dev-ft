resource "oci_apm_apm_domain" "devops_apm_domain" {
    #Required
    compartment_id = var.compartment_id
    display_name = var.apm_diplay_name
    is_free_tier = true
}

