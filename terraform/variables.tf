# variables.tf
variable "project_name" {
  description = "A projekt neve, ami az erőforrások elnevezésében is megjelenik"
  type        = string
  default     = "aidb"
}

variable "server_port" {
  description = "Az NodeJS szerver portja"
  type        = number
  default     = 5000
}

variable "client_port" {
  description = "Az Angular alkalmazás portja"
  type        = number
  default     = 4200
}

variable "db_port" {
  description = "A MongoDB portja"
  type        = number
  default     = 27017
}

variable "environment" {
  description = "Környezet neve (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "mysql_root_password" {
  description = "MySQL root jelszó"
  type        = string
  sensitive   = true
}

variable "graylog_password_secret" {
  description = "Graylog password secret"
  type        = string
  sensitive   = true
}

variable "graylog_root_password_sha2" {
  description = "Graylog root jelszó SHA-256 hash-e"
  type        = string
  sensitive   = true
}

