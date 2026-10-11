variable "project_compliance_frameworks" {
  description = <<EOT
Map of project_compliance_frameworks, attributes below
Required:
    - compliance_framework_ids
    - project
EOT

  type = map(object({
    compliance_framework_ids = set(string)
    project                  = string
  }))
}

