# Example for creating cognito user and associate it to a group

Basic example for user creation without any group association.

```hcl
module "cognito_user" {
  source = "../.."

  USER_POOL_ID  = "your_user_pool_id_here"
  USER_NAME     = "your_username_here"
  USER_PASSWORD = "yourpasswordhere"
}
```
