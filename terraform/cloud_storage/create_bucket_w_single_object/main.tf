
resource "google_storage_bucket" "comprehensive_lab_bucket" {
  name          = var.bucket_name
  location      = "ASIA-EAST1"
  storage_class = "Standard"
  force_destroy = true
  uniform_bucket_level_access = true
  public_access_prevention = "enforced"
}

resource "google_storage_bucket_object" "comphrehensive_lab_pic" {
  name   = basename(var.file_location)
  bucket = google_storage_bucket.comprehensive_lab_bucket.name
  source = var.file_location
}
