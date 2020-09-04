locals {
  /*
  name_prefix = var.name_prefix != "" ? replace(var.name_prefix, "/[a-z0-9]$/", "$0-") : ""

  lb_name = var.lb_name

  ip_name = coalesce(
    var.ip_custom_name,
    "${local.lb_name}-pubip",
  )

  ip_configuration_name = "LoadBalancerFrontEnd"
*/
  subscription_name             = data.azurerm_subscription.current.display_name
  subscription_id               = data.azurerm_subscription.current.subscription_id
  subscription_id_full          = data.azurerm_subscription.current.id
  resource_group_name           = "${local.temp_prefix}-rg-${var.project_name}-${var.location_code}"
  sec_resource_group_name       = "${local.temp_prefix}-rg-security-${var.location_code}"
  net_resource_group_name       = "${local.temp_prefix}-rg-spoke-${var.location_code}"
  subscription_name_short       = lower(replace(data.azurerm_subscription.current.display_name, "-", ""))
  central_resource_group_name   = "${local.temp_prefix}-rg-spoke-${var.location_code}"
  temp_prefix                   = "${var.prefix}-${local.subscription_name_short}"
  storage_os_disk_name_prefix   = "${local.temp_prefix}-d-os-${var.project_name}-${var.location_code}"
  storage_data_disk_name_prefix = "${local.temp_prefix}-d-data-${var.project_name}-${var.location_code}"
  network_interface_name_prefix = "${local.temp_prefix}-nic-${var.project_name}-${var.location_code}"
  central_vnet_name             = "${local.temp_prefix}-vnet-${var.location_code}"
  target_sub_name                = "${local.temp_prefix}-sn-${var.subnet_type}-${var.location_code}"
  disk_encryption_set_id        = "${local.subscription_id_full}/resourceGroups/${local.temp_prefix}-rg-security-${var.location_code}/providers/Microsoft.Compute/diskEncryptionSets/${local.temp_prefix}-des-${var.location_code}"
  backup_recovery_vault_name    = "${local.temp_prefix}-rsv-${var.location_code}"
  backup_policy_id              = "${local.subscription_id_full}/resourceGroups/${local.temp_prefix}-rg-spoke-weu/providers/Microsoft.RecoveryServices/vaults/${local.temp_prefix}-rsv-${var.location_code}/backupPolicies/Long-3AM-WEU"
  
}
data "azurerm_subscription" "current" {
  subscription_id = var.subscription_id
}


