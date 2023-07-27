# 個人的 Project ID
variable "project_id" {
type=string
default = "" 
}
# 建立的 Bucket 名稱
variable "bucket_name" {
  type=string
  default = "comprehensive-lab-bucket"
}
# 待上傳的圖片位置
variable "file_location" {
  type=string
  default = "./cat.jpg"
}


