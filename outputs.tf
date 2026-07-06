output "storage_sync_groups" {
  description = "All storage_sync_group resources"
  value       = azurerm_storage_sync_group.storage_sync_groups
}
output "storage_sync_groups_name" {
  description = "List of name values across all storage_sync_groups"
  value       = [for k, v in azurerm_storage_sync_group.storage_sync_groups : v.name]
}
output "storage_sync_groups_storage_sync_id" {
  description = "List of storage_sync_id values across all storage_sync_groups"
  value       = [for k, v in azurerm_storage_sync_group.storage_sync_groups : v.storage_sync_id]
}

