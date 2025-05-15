variable "credentials_file" {
  description = "Path to GCP service account JSON key"
  type        = string
}

variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "instance_name" {
  description = "VM name"
  type        = string
  default     = "free-tier-vm"
}

variable "machine_type" {
  description = "Machine type"
  type        = string
  default     = "e2-micro"
}

variable "image" {
  description = "Boot disk image"
  type        = string
  default     = "debian-cloud/debian-11"
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

variable "network" {
  description = "Network"
  type        = string
  default     = "default"
}

variable "tags" {
  description = "Tags"
  type        = list(string)
  default     = ["free-tier"]
}

variable "ssh_user" {
  description = "Username to use for SSH access"
  type        = string
}

variable "public_key_path" {
  description = "Path to SSH public key"
  type        = string
}
