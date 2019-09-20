resource "google_compute_instance" "demo" {
  name = "${var.instance_name}"
  machine_type = "f1-micro"
  
  boot_disk {
    initialize_params {
      image = "${var.image_name}"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

}
