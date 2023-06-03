resource "google_service_account" "service_account" {
  account_id   = var.service_account.account_id
  display_name = var.service_account.name
  description  = var.service_account.description
}

resource "google_compute_instance" "compute_instance" {
  for_each = var.compute_instances

  name         = each.value.name
  machine_type = each.value.machine_type

  tags = each.value.tags

  boot_disk {
    auto_delete = true
    initialize_params {
      image = each.value.disk.image
      size  = each.value.disk.size
      type  = each.value.disk.type
    }
  }

  scheduling {
    provisioning_model          = each.value.provisioning_model
    instance_termination_action = each.value.instance_termination_action
    preemptible       = true
    automatic_restart = false
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral public IP
    }
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.service_account.email
    scopes = ["cloud-platform"]
  }
}
