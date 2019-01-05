# How to use modules and why we need to use them , you can use a module few times in your project and its a kind of packaging up your configuration 
# Terraform just look at *.tf files , TF it dosent care but we should make it better 
#  modules can accept input as variables and they can have outputs as returns 
# module "name" {
    source = "./module"
    variable_pass_to_module = "<>" <<< you can pass variable also here
}