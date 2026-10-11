output "project_compliance_frameworks_id" {
  description = "Map of id values across all project_compliance_frameworks, keyed the same as var.project_compliance_frameworks except keys with no id are omitted"
  value       = { for k, v in gitlab_project_compliance_frameworks.project_compliance_frameworks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_compliance_frameworks_compliance_framework_ids" {
  description = "Map of compliance_framework_ids values across all project_compliance_frameworks, keyed the same as var.project_compliance_frameworks except keys with no compliance_framework_ids are omitted"
  value       = { for k, v in gitlab_project_compliance_frameworks.project_compliance_frameworks : k => v.compliance_framework_ids if v.compliance_framework_ids != null && length(v.compliance_framework_ids) > 0 }
}
output "project_compliance_frameworks_project" {
  description = "Map of project values across all project_compliance_frameworks, keyed the same as var.project_compliance_frameworks except keys with no project are omitted"
  value       = { for k, v in gitlab_project_compliance_frameworks.project_compliance_frameworks : k => v.project if v.project != null && length(v.project) > 0 }
}

