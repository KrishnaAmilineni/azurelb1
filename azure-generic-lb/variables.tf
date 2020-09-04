

variable "subscription_id" {
  type = string
}
variable "resource_group_location" {
  type    = string
  default = ""
}

variable "location" {
  type    = string
  default = "westeurope"
}

variable "prefix" {
  type    = string
  default = ""
}
variable "project_name" {
  type    = string
  default = ""
}
variable "vm_count" {
  type    = string
  default = ""
}
variable "subnet_type" {
  type    = string
  default = ""
}

variable "tags" {
  type = object({
    topic         = string,
    heritage      = string,
    contact       = string,
    costcenter    = string,
    executionitem = string,
    stage         = string
  })
}


