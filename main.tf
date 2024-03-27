module "tools" {
  for_each             = var.tools
  source               = "./modules"

  zone_id              = var.zone_id

  tool_name            = each.key
  instance_type        = each.value["instance_type"]
  policy_resource_list = each.value["policy_resource_list"]

}




# For reference >> variables in Key

#variable "tools" {
#  default = {
#    prometheus = {
#      instance_type = "t3.small"
#    }
#    graphana = {
#      instance_type = "t3.small"
#    }
#  }
#}


##Calling  ./modules/app module for frontend ****************** Old code
#
#module "prometheus" {
#  source = "./modules/app"
#  instance_type = var.instance_type
#  component = "prometheus"
#  ssh_user = var.ssh_user
#  ssh_pass = var.ssh_user
#  zone_id = var.zone_id
#}
#
