
resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.security_group.id]

  tags = {
    Name = var.tool_name
  }
}

#resource "null_resource" "ansible" {
#  provisioner "remote-exec" {
#
#    connection {
#      type     = "ssh"
#      user     = var.ssh_user
#      password = var.ssh_pass
#      host     = aws_instance.instance.public_ip
#    }
#
#    inline = [
#
#    ]
#  }
#
#}

resource "aws_route53_record" "record" {
  name    = var.tool_name
  type    = "A"
  zone_id = var.zone_id
  records = [aws_instance.instance.public_ip ]
  ttl     = 30
}

