variable "do_token" {
  type        = string
  description = "DigitalOcean access token"
}

variable "vm_size" {
  type        = string
  default     = "s-1vcpu-2gb"
  description = "VM size"
}

variable "vm_region" {
  type        = string
  default     = "ams3"
  description = "VM region"
}

variable "names" {
  type        = list(string)
  default     = ["master", "worker-1", "worker-2"]
  description = "VM names"
}

variable "domain" {
  type        = string
  default     = "romanow-alex.ru"
  description = "Base domain name"
}