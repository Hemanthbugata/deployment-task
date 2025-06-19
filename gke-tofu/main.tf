resource "google_container_cluster" "primary" {
  project  = var.project_id
  name     = var.gke_cluster_name
  location = var.zone

  ip_allocation_policy {
    cluster_ipv4_cidr_block  = "/14"
    services_ipv4_cidr_block = "/20"
  }

  remove_default_node_pool = true
  initial_node_count       = 1
  deletion_protection      = false
}

resource "google_container_node_pool" "linux_pool" {
  name     = "linux-pool"
  project  = var.project_id
  cluster  = google_container_cluster.primary.name
  location = var.zone

  node_config {
    image_type   = "COS_CONTAINERD"
    machine_type = "e2-medium"
    disk_type    = "pd-standard"
    disk_size_gb = 50

    kubelet_config {
      cpu_manager_policy = "none"
    }
  }

  node_count = 3
  version = "1.32.4-gke.1353003"



  upgrade_settings {
    max_surge       = 1
    max_unavailable = 0
  }
}