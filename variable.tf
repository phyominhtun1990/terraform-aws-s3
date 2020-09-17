variable "name" {
  type        = string
  description = "This is instance created from terraform"
  validation {
    condition     = can(regex("^[a-zA-Z0-9]{4,10}$", var.name))
    error_message = "The bucket name can not be special character."
  }
}

variable "is_public" {
  default     = false
  type        = bool
  description = "Private Bucket or Public Bucket"
}


variable "tag_name" {
  default     = "hello_bucket"
  type        = string
  description = "Tag Name"
}

variable "tag_env" {
  default     = "development"
  type        = string
  description = "Tag Environment"
}
