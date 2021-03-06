variable "name" {
  description = "Name of the resource"
 default     = "samcontainer23476543"
}

variable "resource_group_name" {
  description = "Name of resource group to deploy resources in."
   default     = "automation"
}

variable "location" {
  description = "Azure location where to place resources"
   default     = "canadaeast"
}

variable "sku" {
  description = "The SKU name of the container registry"
  default     = "Standard"
}

variable "content_trust" {
  description = "Set to true to enable Docker Content Trust on registry."
  type        = bool
  default     = false
}

variable "georeplication_locations" {
  description = "A list of Azure locations where the container registry should be geo-replicated."
  type        = list(string)
  default     = null
}

variable "roles" {
  description = "List of roles that should be assigned to Azure AD object_ids."
  type        = list(object({ object_id = string, role = string }))
  default     = []
}

variable "tags" {
  description = "Tags to apply to all resources created."
  type        = map(string)
  default     = {}
}

variable "diagnostics" {
  description = "Diagnostic settings for those resources that support it. See README.md for details on configuration."
  type        = object({ destination = string, eventhub_name = string, logs = list(string), metrics = list(string) })
  default     = null
}
