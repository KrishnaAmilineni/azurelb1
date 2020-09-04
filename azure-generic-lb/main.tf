

#### pub lb

module "lb" {
  source = "../azurelb"
  type    = "public"
  frontend_port = 80
  list = var.list
}

  ##### privatre lb

  module "lb" {
  source = "../azurelb"
  type    = "private"
  }

  ## TAGGING
  //application_tags = var.application_tags
  
  tags             = var.tags
  
 
//use this module this will pass in the correct values in to the lb modules

/*
module "azure_lb" {
  source                  = "../"
  subscription_id         = local.subscription_id
  resource_group_location = local.location
  location_code           = local.location_code
  client_name             = var.client_name
  environment             = var.environment
  location                = var.location
  location_short          = var.location_short
  resource_group_name     = var.resource_group_name
  stack                   = var.stack

  allocate_public_ip = true
  enable_nat         = true
}
*/

