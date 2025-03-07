module "repo_github_config" {
  source      = "./modules/common_repository"
  name        = "github-config"
  description = "Repository for managing ocp-on-nerc github organization"
  required_status_checks = [
    "pre-commit",
  ]
  teams = [
    {
      team_id    = "nerc-ops"
      permission = "push"
    }
  ]
}

module "repo_openshift_tests" {
  source      = "./modules/common_repository"
  name        = "openshift-tests"
  description = "Tests for assessing the health of a cluster"
  required_status_checks = [
    "pre-commit",
  ]
  teams = [
    {
      team_id    = "nerc-ops"
      permission = "push"
    }
  ]
}

module "repo_nerc_ocp_config" {
  source       = "./modules/common_repository"
  name         = "nerc-ocp-config"
  description  = "Configuration of NERC OpenShift clusters"
  homepage_url = "https://nerc.mghpcc.org"
  required_status_checks = [
    "run-linters / run-linters",
  ]
  teams = [
    {
      team_id    = "nerc-ops"
      permission = "push"
    }
  ]
}

module "repo_nerc_ocp_apps" {
  source       = "./modules/common_repository"
  name         = "nerc-ocp-apps"
  description  = "ArgoCD apps for NERC OpenShift clusters"
  homepage_url = "https://nerc.mghpcc.org"
  required_status_checks = [
    "run-linters / run-linters",
  ]
  teams = [
    {
      team_id    = "nerc-ops"
      permission = "push"
    }
  ]
}

module "repo_gatekeeper" {
  source      = "./modules/common_repository"
  name        = "gatekeeper"
  description = "Gatekeeper deployment and policies"
  required_status_checks = [
    "run-linters / run-linters",
    "validate-manifests / validate-manifests",
  ]
  teams = [
    {
      team_id    = "nerc-ops"
      permission = "push"
    }
  ]
}

module "repo_nerc_snmp_exporter_config" {
  source      = "./modules/common_repository"
  name        = "nerc-snmp-exporter-config"
  description = "Configuration for snmp-exporter"
  teams = [
    {
      team_id    = "nerc-ops"
      permission = "push"
    }
  ]
}
