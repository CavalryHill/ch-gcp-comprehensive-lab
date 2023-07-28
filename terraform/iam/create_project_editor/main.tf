resource "google_project_iam_binding" "comphrehensive_pm_role" {
  project = var.project_id
  role    = "roles/${var.iam_role_name}"
  
  members = [for email in var.iam_principal: "user:${email}"] 
}