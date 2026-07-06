variable "storage_sync_groups" {
  description = <<EOT
Map of storage_sync_groups, attributes below
Required:
    - name
    - storage_sync_id
EOT

  type = map(object({
    name            = string
    storage_sync_id = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_storage_sync_group's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.StorageSyncName] !regexp.MustCompile("^[0-9a-zA-Z-_. ]*[0-9a-zA-Z-_]$").MatchString(input)
  # path: storage_sync_id
  #   source:    [from storagesyncservicesresource.ValidateStorageSyncServiceID] !ok
  # path: storage_sync_id
  #   source:    [from storagesyncservicesresource.ValidateStorageSyncServiceID] err != nil
}

