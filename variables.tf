variable "name" {
  type = string
}

variable "namespace" {
  type = string
}

variable "schedule" {
  type = string
}

variable "vault_address" {
  type = string
}

variable "vault_shards" {
  type = list(any)
}