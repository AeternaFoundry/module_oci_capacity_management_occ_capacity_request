resource "oci_capacity_management_occ_capacity_request" "capacity_management_occ_capacity_requests" {
  for_each = var.capacity_management_occ_capacity_requests

  compartment_id                  = each.value.compartment_id
  date_expected_capacity_handover = each.value.date_expected_capacity_handover
  display_name                    = each.value.display_name
  namespace                       = each.value.namespace
  occ_availability_catalog_id     = each.value.occ_availability_catalog_id
  region                          = each.value.region
  availability_domain             = each.value.availability_domain
  defined_tags                    = each.value.defined_tags
  description                     = each.value.description
  freeform_tags                   = each.value.freeform_tags
  lifecycle_details               = each.value.lifecycle_details
  request_state                   = each.value.request_state
  request_type                    = each.value.request_type

  dynamic "details" {
    for_each = each.value.details
    content {
      actual_handover_quantity = details.value.actual_handover_quantity
      dynamic "associated_occ_handover_resource_block_list" {
        for_each = details.value.associated_occ_handover_resource_block_list != null ? details.value.associated_occ_handover_resource_block_list : []
        content {
          handover_quantity              = associated_occ_handover_resource_block_list.value.handover_quantity
          occ_handover_resource_block_id = associated_occ_handover_resource_block_list.value.occ_handover_resource_block_id
        }
      }
      availability_domain        = details.value.availability_domain
      date_actual_handover       = details.value.date_actual_handover
      date_expected_handover     = details.value.date_expected_handover
      demand_quantity            = details.value.demand_quantity
      expected_handover_quantity = details.value.expected_handover_quantity
      resource_name              = details.value.resource_name
      resource_type              = details.value.resource_type
      source_workload_type       = details.value.source_workload_type
      workload_type              = details.value.workload_type
    }
  }

  dynamic "patch_operations" {
    for_each = each.value.patch_operations != null ? each.value.patch_operations : []
    content {
      from          = patch_operations.value.from
      operation     = patch_operations.value.operation
      position      = patch_operations.value.position
      selected_item = patch_operations.value.selected_item
      selection     = patch_operations.value.selection
      value         = patch_operations.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

