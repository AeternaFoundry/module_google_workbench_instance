output "workbench_instances_id" {
  description = "Map of id values across all workbench_instances, keyed the same as var.workbench_instances except keys with no id are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workbench_instances_create_time" {
  description = "Map of create_time values across all workbench_instances, keyed the same as var.workbench_instances except keys with no create_time are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "workbench_instances_creator" {
  description = "Map of creator values across all workbench_instances, keyed the same as var.workbench_instances except keys with no creator are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.creator if v.creator != null && length(v.creator) > 0 }
}
output "workbench_instances_deletion_policy" {
  description = "Map of deletion_policy values across all workbench_instances, keyed the same as var.workbench_instances except keys with no deletion_policy are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "workbench_instances_desired_state" {
  description = "Map of desired_state values across all workbench_instances, keyed the same as var.workbench_instances except keys with no desired_state are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.desired_state if v.desired_state != null && length(v.desired_state) > 0 }
}
output "workbench_instances_disable_proxy_access" {
  description = "Map of disable_proxy_access values across all workbench_instances, keyed the same as var.workbench_instances except keys with no disable_proxy_access are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.disable_proxy_access if v.disable_proxy_access != null }
}
output "workbench_instances_effective_labels" {
  description = "Map of effective_labels values across all workbench_instances, keyed the same as var.workbench_instances except keys with no effective_labels are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "workbench_instances_enable_deletion_protection" {
  description = "Map of enable_deletion_protection values across all workbench_instances, keyed the same as var.workbench_instances except keys with no enable_deletion_protection are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.enable_deletion_protection if v.enable_deletion_protection != null }
}
output "workbench_instances_enable_managed_euc" {
  description = "Map of enable_managed_euc values across all workbench_instances, keyed the same as var.workbench_instances except keys with no enable_managed_euc are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.enable_managed_euc if v.enable_managed_euc != null }
}
output "workbench_instances_enable_third_party_identity" {
  description = "Map of enable_third_party_identity values across all workbench_instances, keyed the same as var.workbench_instances except keys with no enable_third_party_identity are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.enable_third_party_identity if v.enable_third_party_identity != null }
}
output "workbench_instances_gce_setup" {
  description = "Map of gce_setup values across all workbench_instances, keyed the same as var.workbench_instances except keys with no gce_setup are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => one(v.gce_setup) if v.gce_setup != null && length(v.gce_setup) > 0 }
}
output "workbench_instances_health_info" {
  description = "Map of health_info values across all workbench_instances, keyed the same as var.workbench_instances except keys with no health_info are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.health_info if v.health_info != null && length(v.health_info) > 0 }
}
output "workbench_instances_health_state" {
  description = "Map of health_state values across all workbench_instances, keyed the same as var.workbench_instances except keys with no health_state are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.health_state if v.health_state != null && length(v.health_state) > 0 }
}
output "workbench_instances_instance_id" {
  description = "Map of instance_id values across all workbench_instances, keyed the same as var.workbench_instances except keys with no instance_id are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "workbench_instances_instance_owners" {
  description = "Map of instance_owners values across all workbench_instances, keyed the same as var.workbench_instances except keys with no instance_owners are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.instance_owners if v.instance_owners != null && length(v.instance_owners) > 0 }
}
output "workbench_instances_labels" {
  description = "Map of labels values across all workbench_instances, keyed the same as var.workbench_instances except keys with no labels are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "workbench_instances_location" {
  description = "Map of location values across all workbench_instances, keyed the same as var.workbench_instances except keys with no location are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.location if v.location != null && length(v.location) > 0 }
}
output "workbench_instances_name" {
  description = "Map of name values across all workbench_instances, keyed the same as var.workbench_instances except keys with no name are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "workbench_instances_project" {
  description = "Map of project values across all workbench_instances, keyed the same as var.workbench_instances except keys with no project are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.project if v.project != null && length(v.project) > 0 }
}
output "workbench_instances_proxy_uri" {
  description = "Map of proxy_uri values across all workbench_instances, keyed the same as var.workbench_instances except keys with no proxy_uri are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.proxy_uri if v.proxy_uri != null && length(v.proxy_uri) > 0 }
}
output "workbench_instances_state" {
  description = "Map of state values across all workbench_instances, keyed the same as var.workbench_instances except keys with no state are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.state if v.state != null && length(v.state) > 0 }
}
output "workbench_instances_terraform_labels" {
  description = "Map of terraform_labels values across all workbench_instances, keyed the same as var.workbench_instances except keys with no terraform_labels are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "workbench_instances_update_time" {
  description = "Map of update_time values across all workbench_instances, keyed the same as var.workbench_instances except keys with no update_time are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "workbench_instances_upgrade_history" {
  description = "Map of upgrade_history values across all workbench_instances, keyed the same as var.workbench_instances except keys with no upgrade_history are omitted"
  value       = { for k, v in google_workbench_instance.workbench_instances : k => v.upgrade_history if v.upgrade_history != null && length(v.upgrade_history) > 0 }
}

