resource "github_organization_settings" "ocp-on-nerc" {
  name                                         = "OCP on NERC"
  description                                  = "OpenShift at the New England Research Cloud"
  location                                     = "United States of America"
  billing_email                                = "lars@redhat.com"
  secret_scanning_enabled_for_new_repositories = true
  has_repository_projects                      = false
  default_repository_permission                = "read"

  members_can_create_private_repositories = true
  members_can_create_public_repositories  = true
  members_can_create_repositories         = true
}
