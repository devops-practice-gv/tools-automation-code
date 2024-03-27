
variable "tools" {
  default = {
    prometheus = {
      instance_type = "t3.small"
      policy_resource_list = ["ec2:DescribeInstance"]
    }
  }
}

variable "zone_id" {
  default = "Z066337235VP12Y1CUG55"
}


#variable "instance_type" {}
#variable "ssh_user" {}
#variable "ssh_pass" {}

