terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }

  }

}
variable "name" {
  description = "The name of the SNS topic"
  type        = string
}
resource "aws_sns_topic" "test_topic" {
  name = var.name
}
