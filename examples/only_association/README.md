# Example for creating cognito user and associate it to a group

Basic example for associating an existing user to an exsisting group.

```hcl
module "cognito_user" {
  source = "../.."

  ASSOCIATE_USER_TO_GROUP = true
  USER_POOL_ID            = "your_user_pool_id_here"
  USER_NAME               = "your_username_here"
  USER_PASSWORD           = "yourpasswordhere" 
}
```
