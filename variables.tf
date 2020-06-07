# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------

# Cognito parameters
variable "cognito_user_pool_name" {
  type = string
}

variable "cognito_user_pool_client_name" {
  type = string
}

variable "cognito_user_pool_callback_urls" {
  type = list(string)
}

# HTTP API gateway parameters
variable "api_gateway_name" {
  description = "API gateway v2 name"
  type = string
}

variable "authorizer_name" {
  description = "API gateway v2 authorizer name"
  type = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------

# HTTP API gateway parameters
variable "identity_sources" {
  description = "Identity sources (location of JWT in request)"
  type = list(string)
  default = ["$request.header.Authorization"]
}

