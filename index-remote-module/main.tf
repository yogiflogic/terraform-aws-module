// ===== EC2 =====
module "ec2" {
  # source               = "github.com/yogiflogic/terraform-aws-module/ec2"
  source               = "git::https://github.com/yogiflogic/terraform-aws-module.git//ec2?ref=v1.0.0" // with version
  aws_access_key       = var.aws_access_key
  aws_secret_key       = var.aws_secret_key
  list_vm              = var.list_vm
  security_group_names = module.sg.security_group_names
}

// ===== SG =====
module "sg" {
  # source         = "github.com/yogiflogic/terraform-aws-module/sg"
  source         = "git::https://github.com/yogiflogic/terraform-aws-module.git//sg?ref=v1.0.0" // with version
  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
  vpc_id         = var.vpc_id
}