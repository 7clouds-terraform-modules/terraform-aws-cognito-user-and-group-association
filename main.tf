resource "aws_cognito_user" "this" {
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
  count        = length(var.GROUP_LIST) == 0 ? 0 : length(var.GROUP_LIST)
  user_pool_id = var.USER_POOL_ID
  group_name   = var.GROUP_LIST[count.index]
  username     = aws_cognito_user.this.username
}
