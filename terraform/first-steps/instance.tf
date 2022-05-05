provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region = "${var.region}"
}

resource "aws_instance" "test" {
  ami = "ami-02584c1c9d05efa69"
  instance_type = "t2.micro"
}

variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "region" {
        default = "eu-central-1"
}