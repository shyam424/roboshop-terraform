provider "aws" {
  region = "us-east-1"
}


module "components" {

  source    = "git::https://github.com/shyam424/tf-module-basic-test.git"
  for_each  = var.components

  zone_id           = var.zone_id
  security_groups   = var.security_group
  name              = each.value ["name"]
  instance_type     = each.value ["instance_type"]

}



