resource "google_compute_firewall" "mongo" {
	name = "${var.name1}-firewall"
	network = "${var.network}"
	target_tags = ["${var.name1}"]
	source_ranges = ["0.0.0.0/0"]

	allow {
		protocol = "icmp"
	}

	allow {
		protocol = "tcp"
		ports = "${var.allowed_ports}"
	}
}

resource "google_compute_firewall" "api" {
	name = "${var.name2}-firewall"
	network = "${var.network}"
	target_tags = ["${var.name2}"]
	source_ranges = ["0.0.0.0/0"]

	allow {
		protocol = "icmp"
	}

	allow {
		protocol = "tcp"
		ports = "${var.allowed_ports}"
	}
}
