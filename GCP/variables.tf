variable "credentials_file" {
  description = "Path to GCP service account JSON key"
  type        = string
}

variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "Default GCP region for regional resources"
  type        = string
  default     = "us-central1"
}

variable "network" {
  description = "VPC network"
  type        = string
  default     = "default"
}

variable "boot_disk_type" {
  description = "Boot disk type"
  type        = string
  default     = "pd-standard"
}

variable "boot_disk_size" {
  description = "Boot disk size in GB"
  type        = number
  default     = 10
}

variable "image" {
  description = "Boot disk image"
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "tags" {
  description = "Network tags"
  type        = list(string)
  default     = ["free-tier"]
}

variable "ssh_user" {
  description = "SSH username"
  type        = string
}

variable "public_key_path" {
  description = "Path to SSH public key"
  type        = string
}

variable "instances" {
  description = "Map of VM configurations"
  type = map(object({
    name         = string
    machine_type = string
    zone         = string
  }))
}
