provider "aws" {
  access_key = ""
  secret_key = ""
  token      = var.aws_session_token
  region     = var.aws_region
}

variable "aws_session_token" {
  description = "Temporary session token used to create instances"
}

variable "aws_region" {
  default = "ap-southeast-2"
}

variable "bootstrap_directories" {
  description = "The directories comprising the bootstrap package"
  default = [
    "config/",
    "content/",
    "software/",
    "license/",
    "plugins/"
  ]
}

variable "panorama-server" {
  default     = ""
  description = "The FQDN or IP address of the primary Panorama server"
  type        = string
}

variable "panorama-server2" {
  default     = ""
  description = "The FQDN or IP address of the secondary Panorama server"
  type        = string
}

variable "tplname" {
  default     = "BRANCH-STACK"
  description = "The Panorama template stack name"
  type        = string
}

variable "dgname" {
  default     = "SDWAN-BRANCH"
  description = "The Panorama device group name"
  type        = string
}

variable "dns-primary" {
  default     = "8.8.8.8"
  description = "The IP address of the primary DNS server"
  type        = string
}

variable "dns-secondary" {
  default     = ""
  description = "The IP address of the secondary DNS server"
  type        = string
}

variable "vm-auth-key" {
  default     = ""
  description = "Virtual machine authentication key"
  type        = string
}

variable "op-command-modes" {
  default     = ""
  description = "Set jumbo-frame and/or mgmt-interface-swap"
  type        = string
}