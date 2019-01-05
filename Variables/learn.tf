#use case = secrets and reuse your code 
variable "name" {
  type = "string"
}

variable "images" {
  type = "map"

  default {
      us-west-1 = "ami-1111111"
      us-west-2 = "ami-2222222"
  }
}


variable "zones" {
  default = ["us-west-1a","us-west-1b"]
}

variable "test" {
  
}

# How to use them
${var.zones}


# map
variable "instance_size_map" {
  type = "map"
  default {
      dev = "t2.micro"
      test = "t2.medium"
      prod = "m4.large"
  }
}

# How to use a map
${lookup(map_name,map_key)}

variable "instance_size" {
  
}

"${lookup(var.instance_size_map,var.instance_size)}"

# if we pass dev to  instance_size variable then >>> lookup result =  t2.micro

# 3 ways to set the variables :
# 1:    variable "my_variable" {}
#       during apply >>>> terraform apply --var my_variable="test"
#
# 2: with environment variables :
#   you shoule define an env variable in the os :
#   TF_VAR_<variable_name>
#
# 3: create a file with *.tfvars
# variable "my_names"{}
# inside secrets.tfvars >>>
# my_name ="masoud"