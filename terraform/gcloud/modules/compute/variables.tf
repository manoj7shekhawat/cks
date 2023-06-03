variable "service_account" {
  type = object({
    name        = string
    account_id  = string
    description = string
  })
}

variable "compute_instances" {
  type = map(object({
    name         = string
    machine_type = string
    disk        = object({
      image = string
      size  = string
      type  = string
    })
    provisioning_model = string
    instance_termination_action = string
    tags         = list(string)
  }))
}