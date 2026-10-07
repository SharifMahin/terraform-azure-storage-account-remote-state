output "resource_group_name" {
  value = module.resource_group.name
}

output "location" {
  value = module.resource_group.location
}

output "storage_account_name" {
  value = module.storage_account.storage_account_name
}

output "storage_account_id" {
  value = module.storage_account.storage_account_id
}

output "primary_blob_endpoint" {
  value = module.storage_account.primary_blob_endpoint
}

output "container_name" {
  value = module.storage_account.container_name
}