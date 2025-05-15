credentials_file = "key.json"
project_id       = "peak-segment-413917"
region           = "us-central1"
ssh_user         = "a5822358"
public_key_path  = "~/.ssh/id_rsa.pub"
network          = "default"
boot_disk_type   = "pd-standard"
boot_disk_size   = 10
image            = "debian-cloud/debian-11"
tags             = ["free-tier"]

instances = {
  "free-tier-vm" = {
    name         = "free-tier"
    machine_type = "e2-micro"
    zone         = "us-central1-a"
  }
  #   "changhua-vm" = {
  #     name         = "taiwan"
  #     machine_type = "e2-micro"
  #     zone         = "asia-east1-a"
  #   }
}
