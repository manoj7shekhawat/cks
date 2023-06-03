variable "gcloud_project" {
  type = string
}

variable "service_account" {
  type = any
  description = "Service Account variable"
}

variable "compute_instances" {
  type = any
  description = "Compute instances map"
}