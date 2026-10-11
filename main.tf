resource "gitlab_project_compliance_frameworks" "project_compliance_frameworks" {
  for_each = var.project_compliance_frameworks

  compliance_framework_ids = each.value.compliance_framework_ids
  project                  = each.value.project
}

