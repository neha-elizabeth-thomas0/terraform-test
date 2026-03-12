variable "file_prefix" {
  description = "Prefix for the generated file"
  type        = string
  default     = "sample"
}

variable "file_content" {
  description = "Content to write into file"
  type        = string
}
