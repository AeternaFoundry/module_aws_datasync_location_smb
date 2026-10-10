variable "datasync_location_smbs" {
  description = <<EOT
Map of datasync_location_smbs, attributes below
Required:
    - agent_arns
    - password
    - server_hostname
    - subdirectory
    - user
Optional:
    - domain
    - region
    - tags
    - tags_all
    - mount_options (block):
        - version (optional)
EOT

  type = map(object({
    agent_arns      = set(string)
    password        = string
    server_hostname = string
    subdirectory    = string
    user            = string
    domain          = optional(string)
    region          = optional(string)
    tags            = optional(map(string))
    tags_all        = optional(map(string))
    mount_options = optional(object({
      version = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.datasync_location_smbs : (
        length(v.server_hostname) >= 1 && length(v.server_hostname) <= 255
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.datasync_location_smbs : (
        length(v.subdirectory) >= 1 && length(v.subdirectory) <= 4096
      )
    ])
    error_message = "must be between 1 and 4096 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.datasync_location_smbs : (
        length(v.user) >= 1 && length(v.user) <= 104
      )
    ])
    error_message = "must be between 1 and 104 characters"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

