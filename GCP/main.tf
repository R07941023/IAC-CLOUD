resource "google_compute_instance" "vm" {
  for_each     = var.instances
  name         = each.value.name
  machine_type = each.value.machine_type
  zone         = each.value.zone

  boot_disk {
    initialize_params {
      image = var.image
      type  = var.boot_disk_type
      size  = var.boot_disk_size
    }
  }

  network_interface {
    network = var.network
    access_config {} # public IP
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${file(var.public_key_path)}"
  }

  tags = var.tags
}
