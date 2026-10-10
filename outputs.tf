output "datasync_location_smbs_id" {
  description = "Map of id values across all datasync_location_smbs, keyed the same as var.datasync_location_smbs"
  value       = { for k, v in aws_datasync_location_smb.datasync_location_smbs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datasync_location_smbs_agent_arns" {
  description = "Map of agent_arns values across all datasync_location_smbs, keyed the same as var.datasync_location_smbs"
  value       = { for k, v in aws_datasync_location_smb.datasync_location_smbs : k => v.agent_arns if v.agent_arns != null && length(v.agent_arns) > 0 }
}
output "datasync_location_smbs_arn" {
  description = "Map of arn values across all datasync_location_smbs, keyed the same as var.datasync_location_smbs"
  value       = { for k, v in aws_datasync_location_smb.datasync_location_smbs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "datasync_location_smbs_domain" {
  description = "Map of domain values across all datasync_location_smbs, keyed the same as var.datasync_location_smbs"
  value       = { for k, v in aws_datasync_location_smb.datasync_location_smbs : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "datasync_location_smbs_mount_options" {
  description = "Map of mount_options values across all datasync_location_smbs, keyed the same as var.datasync_location_smbs"
  value       = { for k, v in aws_datasync_location_smb.datasync_location_smbs : k => one(v.mount_options) if v.mount_options != null && length(v.mount_options) > 0 }
}
output "datasync_location_smbs_password" {
  description = "Map of password values across all datasync_location_smbs, keyed the same as var.datasync_location_smbs"
  value       = { for k, v in aws_datasync_location_smb.datasync_location_smbs : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "datasync_location_smbs_region" {
  description = "Map of region values across all datasync_location_smbs, keyed the same as var.datasync_location_smbs"
  value       = { for k, v in aws_datasync_location_smb.datasync_location_smbs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "datasync_location_smbs_server_hostname" {
  description = "Map of server_hostname values across all datasync_location_smbs, keyed the same as var.datasync_location_smbs"
  value       = { for k, v in aws_datasync_location_smb.datasync_location_smbs : k => v.server_hostname if v.server_hostname != null && length(v.server_hostname) > 0 }
}
output "datasync_location_smbs_subdirectory" {
  description = "Map of subdirectory values across all datasync_location_smbs, keyed the same as var.datasync_location_smbs"
  value       = { for k, v in aws_datasync_location_smb.datasync_location_smbs : k => v.subdirectory if v.subdirectory != null && length(v.subdirectory) > 0 }
}
output "datasync_location_smbs_tags" {
  description = "Map of tags values across all datasync_location_smbs, keyed the same as var.datasync_location_smbs"
  value       = { for k, v in aws_datasync_location_smb.datasync_location_smbs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "datasync_location_smbs_tags_all" {
  description = "Map of tags_all values across all datasync_location_smbs, keyed the same as var.datasync_location_smbs"
  value       = { for k, v in aws_datasync_location_smb.datasync_location_smbs : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "datasync_location_smbs_uri" {
  description = "Map of uri values across all datasync_location_smbs, keyed the same as var.datasync_location_smbs"
  value       = { for k, v in aws_datasync_location_smb.datasync_location_smbs : k => v.uri if v.uri != null && length(v.uri) > 0 }
}
output "datasync_location_smbs_user" {
  description = "Map of user values across all datasync_location_smbs, keyed the same as var.datasync_location_smbs"
  value       = { for k, v in aws_datasync_location_smb.datasync_location_smbs : k => v.user if v.user != null && length(v.user) > 0 }
}

