terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.25.3"
    }
  }

  experiments = [module_variable_optional_attrs]
}

module "tfe-workspace1" {
  source  = "tfelab.is.hashicorpdemo.com/admin/workspacer/tfe"
  version = "0.1.0"

  organization   = "admin"
  workspace_name = "my-new-tfe-ws"
  workspace_desc = "Description of my new TFE Workspace."

  tfvars = {
    teststring = "iamstring"
    testlist   = ["1", "2", "3"]
    testmap    = { "a" = "1", "b" = "2", "c" = "3" }
  }
}

module "tfe-workspace2" {
  source  = "tfelab.is.hashicorpdemo.com/admin/workspacer/tfe"
  version = "0.1.0"

  organization   = "admin"
  workspace_name = "my-new-tfe-ws2"
  workspace_desc = "Description of my new TFE Workspace."

  tfvars = {
    teststring = "iamstring"
    testlist   = ["1", "2", "3"]
    testmap    = { "a" = "1", "b" = "2", "c" = "3" }
  }
}