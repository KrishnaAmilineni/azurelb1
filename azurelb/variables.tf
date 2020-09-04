variable "type" {
  type        = string
  description = "(Optional) Defined if the loadbalancer is private or public"
  default     = "private"
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

variable "frontend_port" {
  type        = string
  description = "(Optional) Defined if the loadbalancer is private or public"  
}

variable "list" {
    type = list
}