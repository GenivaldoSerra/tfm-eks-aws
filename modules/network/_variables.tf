variable "cidr_block" {
  type        = string
  description = "CIDR of vpc"
}

# variable "aws_region" {
#   description = "The AWS region to deploy resources in"
#   type        = string
# } 

variable "project_name" {
  type        = string
  description = "To be used TAG's Name."
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}