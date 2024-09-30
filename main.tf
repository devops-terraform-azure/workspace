resource "tfe_organization" "test-organization" {
  name  = var.organization_name
  email = var.email
}

resource "tfe_workspace" "count" {
  count        = length(var.workspace_name)
  name         = var.workspace_name[count.index]
  organization = tfe_organization.test-organization.name
  tag_names    = ["azure", "workspace", "environment:${var.workspace_name[count.index]}"]
}