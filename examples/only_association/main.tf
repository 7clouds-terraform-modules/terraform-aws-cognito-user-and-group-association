module "cognito_user" {
  source = "../.."

  ASSOCIATE_USER_TO_GROUP = true
  CREATE_COGNITO_USER     = false
  USER_POOL_ID            = "existing_user_pool_id_here"
  USER_NAME               = "existing_username_here"
  GROUP_NAME              = "existing_group_to_associate_user_to"
}