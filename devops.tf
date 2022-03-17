resource "oci_logging_log_group" "test_log_group" {
  compartment_id = var.compartment_id
  display_name   = "${local.app_name_normalized}_${random_string.deploy_id.result}_log_group"
  defined_tags   = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
}

resource "oci_logging_log" "test_log" {
  #Required
  display_name = "${local.app_name_normalized}_${random_string.deploy_id.result}_log"
  log_group_id = oci_logging_log_group.test_log_group.id
  log_type     = "SERVICE"

  #Optional
  configuration {
    #Required
    source {
      #Required
      category    = "all"
      resource    = oci_devops_project.test_project.id
      service     = "devops"
      source_type = "OCISERVICE"
    }

    #Optional
    compartment_id = var.compartment_id
  }

  is_enabled         = true
  retention_duration = var.project_logging_config_retention_period_in_days
  defined_tags       = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
}

resource "oci_ons_notification_topic" "test_notification_topic" {
  compartment_id = var.compartment_id
  name           = "${local.app_name_normalized}_${random_string.deploy_id.result}_topic"
  defined_tags   = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
}

resource "oci_devops_project" "test_project" {
  compartment_id = var.compartment_id
  # logging_config {
  #   log_group_id             = oci_logging_log_group.test_log_group.id
  #   retention_period_in_days = var.project_logging_config_retention_period_in_days
  # }

  name = "${local.app_name_normalized}_${random_string.deploy_id.result}"
  notification_config {
    #Required
    topic_id = oci_ons_notification_topic.test_notification_topic.id
  }
  #  LOgging config missing- Add that 

  #Optional
  description = var.project_description
  #freeform_tags = var.project_freeform_tags
  defined_tags = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
}
