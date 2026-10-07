# terraform-azure-storage-account-remote-state

Minimal modular Terraform project demonstrating remote state management with Azure Blob Storage backend — deploys a Resource Group and Storage Account with state stored remotely in Azure.

---

## 📋 Overview

This project demonstrates how to configure and use a remote Terraform backend with Azure Blob Storage. Instead of storing state locally, all state is managed remotely — enabling team collaboration, state locking, and secure secret handling.

---

## 🏗️ Architecture

```
Remote State Backend (Azure Blob Storage)
            ↓
      Resource Group
            ↓
      Storage Account + Blob Container
```

---

## ✨ Features

- ✅ Remote state stored in Azure Blob Storage
- ✅ Fully modular structure — each resource in its own reusable module
- ✅ Environment-based deployment via separate tfvars
- ✅ Input validation on storage account name and resource group
- ✅ Private blob container — no public access

---

## 📁 Project Structure

```
terraform-azure-storage-account-remote-state/
├── provider.tf
├── backend.tf
├── main.tf
├── variables.tf
├── outputs.tf
├── env/
│   ├── dev.tfvars           # dev environment values (gitignored)
│   └── example.tfvars       # reference only — copy and fill in values
└── modules/
    ├── resource-group/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    └── storage-account/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

---

## 🧩 Modules

| Module | Resources |
|--------|----------|
| `resource-group` | `azurerm_resource_group` |
| `storage-account` | `azurerm_storage_account`, `azurerm_storage_container` |

---

## ✅ Prerequisites

- Terraform >= 1.3.0
- Azure CLI installed and logged in
- Azure subscription
- Remote backend already provisioned —

```bash
az login
```

---

## 🚀 Usage

### 🔧 Setup

```bash
# Clone the repo
git clone https://github.com/SharifMahin/terraform-azure-storage-account-remote-state.git
cd terraform-azure-storage-account-remote-state

# Copy example and fill in your values
cp env/example.tfvars env/dev.tfvars
```

### ▶️ Deploy

```bash
terraform init
terraform plan  -var-file="env/dev.tfvars"
terraform apply -var-file="env/dev.tfvars"
```

On `terraform init` you will see:

```
Initializing the backend...
Successfully configured the backend "azurerm"!
```

This confirms state is being stored remotely in Azure Blob Storage.

### 🗑️ Destroy

```bash
terraform destroy -var-file="env/dev.tfvars"
```

---

## 🌍 Environments

| Environment | File | Status |
|-------------|------|--------|
| dev | `env/dev.tfvars` | ✅ Active |

---

## 💡 Key Concepts

| Concept | Where |
|---------|-------|
| Remote state backend | `backend.tf` |
| Module output chaining | `module.resource_group.name → module.storage_account` |
| Input validation | `modules/*/variables.tf` |
| Environment-based tfvars | `env/dev.tfvars` |

---

## 🛠️ Tech Stack

- Terraform ~> 1.3.0
- AzureRM Provider ~> 4.0
- Azure (japaneast)
- Azure CLI

---

## 👤 Author

**MD SHARIF MULLA MAHIN**  
Lead Engineer  
Tokyo, Japan 🇯🇵