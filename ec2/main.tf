module "sg_module" {
  source = "../sg"
}

resource "aws_instance" "my_vm" {
  ami                       = var.ami //Ubuntu AMI
  instance_type             = var.instance_type
  vpc_security_group_ids    = [module.sg_module.sg_id]

  user_data                 = file("./ec2/init-script.sh")
  tags = {
    Name = var.name_tag,
  }
}