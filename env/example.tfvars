# Copy to env/dev.tfvars and fill in your values

# ── Resource Group ──────────────────────
resource_group_name = "rg-<project>-<env>-<region>"
location            = "japaneast"

# ── Storage Account ──────────────────────
storage_account_name = "st<project><env><region>"    # globally unique, lowercase, max 24 chars
container_name       = "cnt-<project>-<env>-<region>"

# ── Tags ─────────────────────────────────
tags = {
  environment = "<dev|prod>"
  project     = "<project-name>"
  owner       = "<your-name>"
}