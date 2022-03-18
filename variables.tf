## Copyright (c) 2021, Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_id" {}


variable "app_name" {
  default     = "DevOps"
  description = "Application name. Will be used as prefix to identify resources, such as OKE, VCN, DevOps, and others"
}

variable "release" {
  description = "Reference Architecture Release (OCI Architecture Center)"
  default     = "1.2"
}

variable "api_gateway_name" {
  default     = "API Gateway FT"
  description = "Nome do API Gateway a ser criado"
}

variable "api_gateway_type" {
  default     = "PUBLIC"
  description = "Público ou Privado"
}

variable "apm_diplay_name" {
  default     = "APM FT"
  description = "Nome do APM a ser criado"
}
//REPOS VAR
variable "repository_is_immutable" {
  default     = false
  description = "Os artefatos de um repositório imutável não podem ser substituídos."
}

variable "repository_repository_type" {
  default     = "GENERIC"
  description = "Tipo do repositório"
}

variable "artifact_repository_display_name" {
  default     = "artifact_repository"
  description = "Nome do repositório de artefato"
}

variable "container_repository_display_name" {
  default     = "java-img"
  description = "Nome do repositório de container"
}

variable "stream_pool_name" {
  default = "stream_pool"
  description = "Stream Pool Name"
}

variable "stream_name"{
  default = "workshop"
}

variable "stream_partitions"{
  default = 1
}

variable "bucket_name"{
  default = "workshop_bucket"
}

variable "application_display_name"{
  default = "functionworkshop"
}