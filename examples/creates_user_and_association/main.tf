module "cognito_user" {
  source = "../.."

  USER_POOL_ID            = "your_user_pool_id_here"
  USER_NAME               = "your_username_here"
  USER_PASSWORD           = "yourpasswordhere"
  ASSOCIATE_USER_TO_GROUP = true
  GROUP_NAME              = "admin"
}