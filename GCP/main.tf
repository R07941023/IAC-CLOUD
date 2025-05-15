resource "google_compute_instance" "free_vm" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
      type  = var.boot_disk_type
      size  = var.boot_disk_size
    }
  }

  network_interface {
    network = var.network
    access_config {} # apply public ip
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${file(var.public_key_path)}"
  }

  tags = var.tags
}
