provider "google" {
  credentials = file("/root/nodal-boulder-325005-00813e833513.json")
  project = "Test Project"
  region = "us-central"
}

resource "google_compute_instance" "vm_instance" {
  count = 2
  name = "Centos7-vm"
  machine_type = "f1-micro"

boot_disk {
  initialize_params {
    image = "CentOS 7"
  }
}

network_interface {
   network = "default"

   access_config {
     // Include this section to give the VM an external ip address
   }
}
}
