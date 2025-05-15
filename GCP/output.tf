output "vm_external_ips" {
  description = "Public IPs of all VMs"
  value = {
    for vm in google_compute_instance.vm :
    vm.name => vm.network_interface[0].access_config[0].nat_ip
  }
}

output "vm_names" {
  description = "Names of all VMs"
  value       = keys(google_compute_instance.vm)
}
