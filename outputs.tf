output "capacity_management_occ_capacity_requests_id" {
  description = "Map of id values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no id are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.id if v.id != null && length(v.id) > 0 }
}
output "capacity_management_occ_capacity_requests_availability_domain" {
  description = "Map of availability_domain values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no availability_domain are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "capacity_management_occ_capacity_requests_compartment_id" {
  description = "Map of compartment_id values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no compartment_id are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "capacity_management_occ_capacity_requests_date_expected_capacity_handover" {
  description = "Map of date_expected_capacity_handover values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no date_expected_capacity_handover are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.date_expected_capacity_handover if v.date_expected_capacity_handover != null && length(v.date_expected_capacity_handover) > 0 }
}
output "capacity_management_occ_capacity_requests_defined_tags" {
  description = "Map of defined_tags values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no defined_tags are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "capacity_management_occ_capacity_requests_description" {
  description = "Map of description values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no description are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.description if v.description != null && length(v.description) > 0 }
}
output "capacity_management_occ_capacity_requests_details" {
  description = "Map of details values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no details are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.details if v.details != null && length(v.details) > 0 }
}
output "capacity_management_occ_capacity_requests_display_name" {
  description = "Map of display_name values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no display_name are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "capacity_management_occ_capacity_requests_freeform_tags" {
  description = "Map of freeform_tags values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "capacity_management_occ_capacity_requests_lifecycle_details" {
  description = "Map of lifecycle_details values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "capacity_management_occ_capacity_requests_namespace" {
  description = "Map of namespace values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no namespace are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "capacity_management_occ_capacity_requests_occ_availability_catalog_id" {
  description = "Map of occ_availability_catalog_id values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no occ_availability_catalog_id are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.occ_availability_catalog_id if v.occ_availability_catalog_id != null && length(v.occ_availability_catalog_id) > 0 }
}
output "capacity_management_occ_capacity_requests_occ_customer_group_id" {
  description = "Map of occ_customer_group_id values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no occ_customer_group_id are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.occ_customer_group_id if v.occ_customer_group_id != null && length(v.occ_customer_group_id) > 0 }
}
output "capacity_management_occ_capacity_requests_patch_operations" {
  description = "Map of patch_operations values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no patch_operations are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.patch_operations if v.patch_operations != null && length(v.patch_operations) > 0 }
}
output "capacity_management_occ_capacity_requests_region" {
  description = "Map of region values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no region are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.region if v.region != null && length(v.region) > 0 }
}
output "capacity_management_occ_capacity_requests_request_state" {
  description = "Map of request_state values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no request_state are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.request_state if v.request_state != null && length(v.request_state) > 0 }
}
output "capacity_management_occ_capacity_requests_request_type" {
  description = "Map of request_type values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no request_type are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.request_type if v.request_type != null && length(v.request_type) > 0 }
}
output "capacity_management_occ_capacity_requests_state" {
  description = "Map of state values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no state are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.state if v.state != null && length(v.state) > 0 }
}
output "capacity_management_occ_capacity_requests_system_tags" {
  description = "Map of system_tags values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no system_tags are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "capacity_management_occ_capacity_requests_time_created" {
  description = "Map of time_created values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no time_created are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "capacity_management_occ_capacity_requests_time_updated" {
  description = "Map of time_updated values across all capacity_management_occ_capacity_requests, keyed the same as var.capacity_management_occ_capacity_requests except keys with no time_updated are omitted"
  value       = { for k, v in oci_capacity_management_occ_capacity_request.capacity_management_occ_capacity_requests : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

