variable "organization_name" {
  type        = string
  description = "The TFE Organization Name."
  default     = "AzureCraft"
}

variable "email" {
  type        = string
  description = "The admin email."
}

variable "workspace_name" {
  type        = list(string)
  description = "The name of the Workspace."
  default     = ["dev", "stage", "test", "prod"]
}

variable "tag_names" {
  type        = list(string)
  description = "The tag names"
  default     = ["azure", "workspace", "environment"]
}

variable "hostname" {
  type        = string
  description = "The HCP Terraform or Terraform Enterprise hostname to connect to. Defaults to app.terraform.io"
  default     = "app.terraform.io"
}

variable "token" {
  type        = string
  description = "The token used to authenticate with HCP Terraform or Terraform Enterprise"
}