data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "RHEL-9-DevOps-Practice"
#  owners           = ["972946952941"]   this is not owner ID, it the ID of the AMI name maybe
  owners           = ["973714476881"]
}

data "aws_security_group" "security_group" {
  name = "allow-all"
}