# 個人的 Project ID
variable "project_id" {
type=string
default="" 
}
# 施用的 Role
variable "iam_role_name" {
type=string
default="editor"  
}
# 對象名單
variable "iam_principal" {
  type=list(string)
  default=[]
}


