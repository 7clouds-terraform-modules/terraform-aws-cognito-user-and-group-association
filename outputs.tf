output "USER_POOL_ID" {
  value = var.USER_POOL_ID
}

output "USER_NAME" {
  value = var.USER_NAME
}

output "USER_ATTRIBUTES" {
  value = var.USER_ATTRIBUTES
}

output "CLIENT_METADATA" {
  value = var.CLIENT_METADATA
}

output "DESIRED_DELIVERY_MEDIUMS" {
  value = var.DESIRED_DELIVERY_MEDIUMS
}

output "ENABLED_AFTER_CREATION" {
  value = var.ENABLED_AFTER_CREATION
}

output "FORCE_ALIAS_CREATION" {
  value = var.FORCE_ALIAS_CREATION
}

output "MESSAGE_ACTION" {
  value = var.MESSAGE_ACTION
}

output "USER_PASSWORD" {
  value     = var.USER_PASSWORD
  sensitive = true
}

output "VALIDATION_DATA" {
  value = var.VALIDATION_DATA
}

output "GROUP_NAME" {
  value = var.GROUP_NAME
}