provider "google" {
  credentials = "${file("service_account.json")}"
  project = "qwiklabs-gcp-ebb164a9f7ef58a9"
  region = "us-central1"
  zone = "us-central1-a"
}

module "compute_instance" {
    source = "./compute_engine"
    instance_name = "terraform_instance"
    image_name = "ebian-colud/debian-9"
}

