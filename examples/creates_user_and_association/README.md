# Example for creating cognito user and associate it to a group

Basic example for user creation and for associating it to an existing group.

```hcl
module "cognito_user" {
  source = "../.."

  USER_POOL_ID            = "your_user_pool_id_here"
  USER_NAME               = "your_username_here"
  USER_PASSWORD           = "yourpasswordhere" 
  GROUP_LIST              = ["example1", "example2"]
}
```
