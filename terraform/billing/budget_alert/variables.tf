# 個人的 Project ID
variable "project_id" {
type=string
default="" 
}
# 個人的 Billing Account ID
variable "billing_account" {
type=string
default=""  
}
# Budget 名稱
variable "budget_name" {
    type=string
    default="comprehensive_lab_budget"
}
# Budget 美金定額
variable "budget_threshold" {
    type=number
    default=30
}



