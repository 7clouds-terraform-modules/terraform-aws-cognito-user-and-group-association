output "USER_NAME" {
  value = aws_cognito_user.this.username
}

output "GROUP_LIST" {
  value = aws_cognito_user_in_group.this[*].group_name
}