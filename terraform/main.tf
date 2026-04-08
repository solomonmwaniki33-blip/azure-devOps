# Create a Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "rg-devops-project"
  location = "SouthAfricaNorth" # You can change this to "South Africa North" if preferred
}

# Create a Private Container Registry
resource "azurerm_container_registry" "acr" {
  name                = "acrdevopsproject${random_string.suffix.result}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
  admin_enabled       = true
}

resource "random_string" "suffix" {
  length  = 5
  special = false
  upper   = false
}

# Output the login server URL so we know where to push our Docker image later
output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}