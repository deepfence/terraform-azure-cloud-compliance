# Manages an application registration within Azure Active Directory.

module "infrastructure_cloud-compliance-scanner-app" {
  count  = var.deploy_scanning ? 1 : 0
  source = "../../modules/infrastructure/cloud-compliance-scanner-app"

  name             = var.name
  subscription_ids = [data.azurerm_subscription.current.subscription_id]
}