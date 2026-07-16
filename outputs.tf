output "storage_sync_groups_id" {
  description = "Map of id values across all storage_sync_groups, keyed the same as var.storage_sync_groups"
  value       = { for k, v in azurerm_storage_sync_group.storage_sync_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_sync_groups_name" {
  description = "Map of name values across all storage_sync_groups, keyed the same as var.storage_sync_groups"
  value       = { for k, v in azurerm_storage_sync_group.storage_sync_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "storage_sync_groups_storage_sync_id" {
  description = "Map of storage_sync_id values across all storage_sync_groups, keyed the same as var.storage_sync_groups"
  value       = { for k, v in azurerm_storage_sync_group.storage_sync_groups : k => v.storage_sync_id if v.storage_sync_id != null && length(v.storage_sync_id) > 0 }
}

