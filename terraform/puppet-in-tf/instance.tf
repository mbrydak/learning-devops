provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region = "${var.region}"
}

resource "aws_ecr_repository" "learning-devops" {
  name = "learning-devops"
}

resource "aws_ecs_cluster" "learning-devops" {
  name = "learning-devops"
}

variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "region" {}