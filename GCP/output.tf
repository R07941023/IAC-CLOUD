output "vm_external_ip" {
  description = "VM public IP"
  value       = google_compute_instance.free_vm.network_interface[0].access_config[0].nat_ip
}

output "vm_name" {
  description = "VM name"
  value       = google_compute_instance.free_vm.name
}
