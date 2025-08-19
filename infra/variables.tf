variable "project"     {
  type = string
  default = "rails-textract"
}
variable "env"         {
  type = string
  default = "dev"
}
variable "aws_region"  {
  type = string
  default = "ap-northeast-1"
}

variable "create_app_user" {
  type    = bool
  default = true
}
