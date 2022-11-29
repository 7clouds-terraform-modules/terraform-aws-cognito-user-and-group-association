# Cognito User and Group Association Module by 7Clouds

Thank you for riding with us! Feel free to download or reference this respository in your terraform projects and studies

This module is a part of our product SCA — An automated API and Serverless Infrastructure generator that can reduce your API development time by 40-60% and automate your deployments up to 90%! Check it out at <https://seventechnologies.cloud>

Please rank this repo 5 starts if you like our job!

## Usage

The module might be used to deploy a cognito user and/or associate it to a cognito group. It requires an existing cognito user pool at least. For groups association, it also will be required an existing group.

It was designed considering the admin user creation. So the configuration is pre-setted for enabling this user just after creation and association to admin group.

## Example

```hcl
module "cognito_user" {
  source = "../.."

  USER_POOL_ID = "your_user_pool_id_here"
  USER_NAME = "your_username_here"
  USER_PASSWORD = "yourpasswordhere" #respecting the user pool's conditions
  ASSOCIATE_USER_TO_GROUP = true # This boolean validates the creation of the association resource
  GROUP_NAME = "admin" # If the variable above is set true, you must inform the pre-existing group you would like to associate this user to
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cognito_user.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user) | resource |
| [aws_cognito_user_in_group.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_in_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ASSOCIATE_USER_TO_GROUP"></a> [ASSOCIATE\_USER\_TO\_GROUP](#input\_ASSOCIATE\_USER\_TO\_GROUP) | Boolean to choose wether to associate a user to a group or not | `bool` | `false` | no |
| <a name="input_CLIENT_METADATA"></a> [CLIENT\_METADATA](#input\_CLIENT\_METADATA) | A map of custom key-value pairs that you can provide as input for any custom workflows that user creation triggers. Amazon Cognito does not store the client\_metadata value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose | `map(string)` | `{}` | no |
| <a name="input_CREATE_COGNITO_USER"></a> [CREATE\_COGNITO\_USER](#input\_CREATE\_COGNITO\_USER) | Boolean to choose wether to create or not a user for cognito | `bool` | `true` | no |
| <a name="input_DESIRED_DELIVERY_MEDIUMS"></a> [DESIRED\_DELIVERY\_MEDIUMS](#input\_DESIRED\_DELIVERY\_MEDIUMS) | A list of mediums to the welcome message will be sent through. Allowed values are EMAIL and SMS. If it's provided, make sure you have also specified email attribute for the EMAIL medium and phone\_number for the SMS. More than one value can be specified. Amazon Cognito does not store the desired\_delivery\_mediums value | `list(string)` | `[]` | no |
| <a name="input_ENABLED_AFTER_CREATION"></a> [ENABLED\_AFTER\_CREATION](#input\_ENABLED\_AFTER\_CREATION) | Specifies whether the user should be enabled after creation. The welcome message will be sent regardless of the enabled value. The behavior can be changed with message\_action argument. Defaults to true | `bool` | `true` | no |
| <a name="input_FORCE_ALIAS_CREATION"></a> [FORCE\_ALIAS\_CREATION](#input\_FORCE\_ALIAS\_CREATION) | If this parameter is set to True and the phone\_number or email address specified in the attributes parameter already exists as an alias with a different user, Amazon Cognito will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias. Amazon Cognito does not store the force\_alias\_creation value. Defaults to false | `bool` | `false` | no |
| <a name="input_GROUP_NAME"></a> [GROUP\_NAME](#input\_GROUP\_NAME) | The name of the group to which the user is to be added | `string` | n/a | yes |
| <a name="input_MESSAGE_ACTION"></a> [MESSAGE\_ACTION](#input\_MESSAGE\_ACTION) | Set to RESEND to resend the invitation message to a user that already exists and reset the expiration limit on the user's account. Set to SUPPRESS to suppress sending the message. Only one value can be specified. Amazon Cognito does not store the message\_action value | `string` | `"SUPPRESS"` | no |
| <a name="input_USER_ATTRIBUTES"></a> [USER\_ATTRIBUTES](#input\_USER\_ATTRIBUTES) | A map that contains user attributes and attribute values to be set for the user | `map(string)` | `{}` | no |
| <a name="input_USER_NAME"></a> [USER\_NAME](#input\_USER\_NAME) | The username for the user. Must be unique within the user pool. Must be a UTF-8 string between 1 and 128 characters. After the user is created, the username cannot be changed | `string` | n/a | yes |
| <a name="input_USER_PASSWORD"></a> [USER\_PASSWORD](#input\_USER\_PASSWORD) | The user's permanent password. This password must conform to the password policy specified by user pool the user belongs to. The welcome message always contains only temporary\_password value. You can suppress sending the welcome message with the message\_action argument. Amazon Cognito does not store the password value. Conflicts with temporary\_password | `string` | `""` | no |
| <a name="input_USER_POOL_ID"></a> [USER\_POOL\_ID](#input\_USER\_POOL\_ID) | The user pool ID for the user pool where the user will be created | `string` | n/a | yes |
| <a name="input_VALIDATION_DATA"></a> [VALIDATION\_DATA](#input\_VALIDATION\_DATA) | The user's validation data. This is an array of name-value pairs that contain user attributes and attribute values that you can use for custom validation, such as restricting the types of user accounts that can be registered. Amazon Cognito does not store the validation\_data value | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_CLIENT_METADATA"></a> [CLIENT\_METADATA](#output\_CLIENT\_METADATA) | n/a |
| <a name="output_DESIRED_DELIVERY_MEDIUMS"></a> [DESIRED\_DELIVERY\_MEDIUMS](#output\_DESIRED\_DELIVERY\_MEDIUMS) | n/a |
| <a name="output_ENABLED_AFTER_CREATION"></a> [ENABLED\_AFTER\_CREATION](#output\_ENABLED\_AFTER\_CREATION) | n/a |
| <a name="output_FORCE_ALIAS_CREATION"></a> [FORCE\_ALIAS\_CREATION](#output\_FORCE\_ALIAS\_CREATION) | n/a |
| <a name="output_GROUP_NAME"></a> [GROUP\_NAME](#output\_GROUP\_NAME) | n/a |
| <a name="output_MESSAGE_ACTION"></a> [MESSAGE\_ACTION](#output\_MESSAGE\_ACTION) | n/a |
| <a name="output_USER_ATTRIBUTES"></a> [USER\_ATTRIBUTES](#output\_USER\_ATTRIBUTES) | n/a |
| <a name="output_USER_NAME"></a> [USER\_NAME](#output\_USER\_NAME) | n/a |
| <a name="output_USER_PASSWORD"></a> [USER\_PASSWORD](#output\_USER\_PASSWORD) | n/a |
| <a name="output_USER_POOL_ID"></a> [USER\_POOL\_ID](#output\_USER\_POOL\_ID) | n/a  |
| <a name="output_VALIDATION_DATA"></a> [VALIDATION\_DATA](#output\_VALIDATION\_DATA) | n/a |
<!-- END_TF_DOCS -->