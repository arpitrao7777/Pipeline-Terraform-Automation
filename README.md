# 🚀 Pipeline-Terraform-Automation

## 📌 Overview
This repository demonstrates **automated infrastructure deployment on Azure using Terraform and Azure DevOps Pipelines**.  
It integrates **security and compliance tools** like Checkov, TFLint, and TFSec while leveraging **pipeline templates** to simplify multi-environment deployments.  

The project removes the need for **manual environment selection** in pipelines by introducing **parameterized templates**, making the deployment process fully automated and reusable.

---

## ⚡ Features
- ✅ **Infrastructure as Code (IaC)** using Terraform  
- ✅ **Reusable Pipeline Templates** (YAML)  
- ✅ Pipelines with **steps, stages, and jobs** for modular execution  
- ✅ **Environment-based configuration** (`dev` & `prod`) using `*.tfvars`  
- ✅ **Security & Compliance Tools**:  
  - 🔍 **Checkov** – static analysis for Terraform code  
  - 🔒 **TFSec** – security scanning  
  - 📏 **TFLint** – Terraform linter  

---

## 🔑 Key Concepts

### 🏗️ Infra Code
- `provider.tf` → Defines Azure provider configuration  
- `variables.tf` → Declares reusable variables  
- `main.tf` → Core infrastructure logic  
- `terraform.tfvars` → Default variable values  
- `dev.terraform.tfvars` → Variables for **Dev environment**  
- `prod.terraform.tfvars` → Variables for **Prod environment**  

---

### ⚙️ Pipeline Templates
- `templates-dev-tf.yml` → Dev-specific Terraform deployment  
- `templates-prod-tf.yml` → Prod-specific Terraform deployment  
- `templates-module-tf.yml` → Common reusable template  

Templates remove **manual environment selection** by dynamically picking the environment configuration.

---

### 🛠️ Pipeline Types
- **Steps Pipeline** → Executes tasks step by step.  
- **Stages Pipeline** → Organizes jobs into multiple stages.  
- **Jobs Pipeline** → Runs multiple jobs in parallel or sequentially.  

---

### 🛡️ Security & Compliance
- **Checkov** – Policy-as-code scans for Terraform  
- **TFLint** – Best practices and linting for Terraform code  
- **TFSec** – Security scanning for cloud misconfigurations  

Defined inside the **security pipeline YAML**.

---

## 🚀 How Automation Works
Initially, environment selection (`dev` / `prod`) was done **manually** via pipeline parameters.  
Now, using **pipeline templates**, the environment is **automatically selected** based on the pipeline configuration file.  

This ensures:  
- ✅ No manual input required  
- ✅ Consistent environment deployments  
- ✅ Reusable and scalable pipeline design  
