variable "region" {}

variable "domain" {
  description = "domain or subdomain without www"
}

variable "zone_id" {
  description = "The ID of the hosted zone to contain this record."
}

variable "app_name" {
  description = "Website project name"
}

variable "git_repository_owner" {
  description = "Github Repository Owner"
}

variable "git_repository_name" {
  description = "Project name on Github"
}

variable "git_repository_branch" {
  description = "Github Project Branch"
}
