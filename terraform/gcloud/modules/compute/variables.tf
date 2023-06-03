variable "service_account" {
  type = object({
    name        = string
    account_id  = string
    description = string
  })
}