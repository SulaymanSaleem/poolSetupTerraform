provider "google" {
    credentials = "${file("~/.gcp/terraform_key.json")}"
    project = "${var.prosject}"
    region = "europe-west2"
}
