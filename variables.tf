# REQUIRED
variable "USER_POOL_ID" {
  description = "The user pool ID for the user pool where the user will be created"
  type        = string
}

variable "USER_NAME" {
  description = "The username for the user. Must be unique within the user pool. Must be a UTF-8 string between 1 and 128 characters. After the user is created, the username cannot be changed"
  type        = string
}

# OPTIONAL
variable "USER_ATTRIBUTES" {
  description = "A map that contains user attributes and attribute values to be set for the user"
  type        = map(string)
  default     = {}
}

variable "CLIENT_METADATA" {
  description = "A map of custom key-value pairs that you can provide as input for any custom workflows that user creation triggers. Amazon Cognito does not store the client_metadata value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose"
  type        = map(string)
  default     = {}
}

variable "DESIRED_DELIVERY_MEDIUMS" {
  description = "A list of mediums to the welcome message will be sent through. Allowed values are EMAIL and SMS. If it's provided, make sure you have also specified email attribute for the EMAIL medium and phone_number for the SMS. More than one value can be specified. Amazon Cognito does not store the desired_delivery_mediums value"
  type        = list(string)
  default     = []
}

variable "ENABLED_AFTER_CREATION" {
  description = "Specifies whether the user should be enabled after creation. The welcome message will be sent regardless of the enabled value. The behavior can be changed with message_action argument. Defaults to true"
  type        = bool
  default     = true
}

variable "FORCE_ALIAS_CREATION" {
  description = " If this parameter is set to True and the phone_number or email address specified in the attributes parameter already exists as an alias with a different user, Amazon Cognito will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias. Amazon Cognito does not store the force_alias_creation value. Defaults to false"
  type        = bool
  default     = false
}

variable "MESSAGE_ACTION" {
  description = "Set to RESEND to resend the invitation message to a user that already exists and reset the expiration limit on the user's account. Set to SUPPRESS to suppress sending the message. Only one value can be specified. Amazon Cognito does not store the message_action value"
  type        = string
  default     = "SUPPRESS"
}

variable "USER_PASSWORD" {
  description = "The user's permanent password. This password must conform to the password policy specified by user pool the user belongs to. The welcome message always contains only temporary_password value. You can suppress sending the welcome message with the message_action argument. Amazon Cognito does not store the password value. Conflicts with temporary_password"
  type        = string
  default     = ""
}

variable "VALIDATION_DATA" {
  description = "The user's validation data. This is an array of name-value pairs that contain user attributes and attribute values that you can use for custom validation, such as restricting the types of user accounts that can be registered. Amazon Cognito does not store the validation_data value"
  type        = map(string)
  default     = {}
}

variable "GROUP_LIST" {
  description = "Group list for user association"
  type        = list(string)
  default     = []
}


