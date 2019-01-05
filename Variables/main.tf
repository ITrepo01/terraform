provider "aws" {
  region = "us-west-2"
}
variable "tag" {
  type = "map"
  default = {
    dev = "development-env"
    prd = "production-env"
    stg = "production-env"
  }
}

variable "env" {
  
}




#
tags {
  environment_type = "${lookup(var.tag, var.env,)}"
}
