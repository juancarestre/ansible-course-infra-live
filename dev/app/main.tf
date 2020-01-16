module "instanceappmodule" {
  source = "./instances"
  instance_type  = var.instance_type
  env = var.env
  group = var.group
}