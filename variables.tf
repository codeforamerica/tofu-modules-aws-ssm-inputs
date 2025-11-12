variable "inputs" {
  type        = list(string)
  description = "Inputs to be read from SSM Parameter Store."
}

variable "prefix" {
  type        = string
  description = "Prefix to prepend to all input names."
  default     = null
}
