# modules/jenkins/variables.tf
variable "project_name" {
  description = "A projekt neve, ami az erőforrások elnevezésében is megjelenik"
  type        = string
  default     = "aidb"
}

variable "container_name" {
  description = "A Docker konténer neve"
  type        = string
}