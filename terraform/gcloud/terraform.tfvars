gcloud_project = "m7shekhawat"

service_account = {
  name = "Manoj Shekhawat"
  account_id = "mshekhawat"
  description = "Manoj Shekhawat service account"
}

compute_instances = {
  control = {
    name         = "k8s-control"
    machine_type = "e2-standard-2"

    disk = {
      image = "ubuntu-2004-lts"
      size  = "50"
      type  = "pd-standard"
    }
    provisioning_model          = "SPOT"
    instance_termination_action = "DELETE"
    tags  = ["dev", "k8s", "control"]
  }
  worker = {
    name         = "k8s-worker"
    machine_type = "e2-medium"

    disk = {
      image = "ubuntu-2004-lts"
      size  = "50"
      type  = "pd-standard"
    }
    provisioning_model          = "SPOT"
    instance_termination_action = "DELETE"
    tags  = ["dev", "k8s", "worker"]
  }
}