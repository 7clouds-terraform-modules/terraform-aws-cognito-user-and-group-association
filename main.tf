resource "aws_cognito_user" "this" {
  count                    = var.CREATE_COGNITO_USER == true ? 1 : 0
  user_pool_id             = var.USER_POOL_ID
  username                 = var.USER_NAME
  attributes               = var.USER_ATTRIBUTES
  client_metadata          = var.CLIENT_METADATA
  desired_delivery_mediums = var.DESIRED_DELIVERY_MEDIUMS
  enabled                  = var.ENABLED_AFTER_CREATION
  force_alias_creation     = var.FORCE_ALIAS_CREATION
  message_action           = var.MESSAGE_ACTION
  password                 = var.USER_PASSWORD
  validation_data          = var.VALIDATION_DATA
}

resource "aws_cognito_user_in_group" "this" {
  count        = var.ASSOCIATE_USER_TO_GROUP == true ? 1 : 0
  user_pool_id = var.USER_POOL_ID
  group_name   = var.GROUP_NAME
  username     = var.CREATE_COGNITO_USER == true ? aws_cognito_user.this[count.index].username : var.USER_NAME
}
