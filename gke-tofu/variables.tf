variable "project_id" {
  description = " GCP Project ID"
  default     = "teak-surge-458612-u2"
}
variable "region" {
  default = "us-central1"
}
variable "zone" {
  default = "us-central1-a"
}
variable "gke_cluster_name" {
  default = "gke-tofu"
}