variable "capacity_management_occ_capacity_requests" {
  description = <<EOT
Map of capacity_management_occ_capacity_requests, attributes below
Required:
    - compartment_id
    - date_expected_capacity_handover
    - display_name
    - namespace
    - occ_availability_catalog_id
    - region
    - details (block):
        - actual_handover_quantity (optional)
        - associated_occ_handover_resource_block_list (optional, block):
            - handover_quantity (optional)
            - occ_handover_resource_block_id (optional)
        - availability_domain (optional)
        - date_actual_handover (optional)
        - date_expected_handover (optional)
        - demand_quantity (required)
        - expected_handover_quantity (optional)
        - resource_name (required)
        - resource_type (required)
        - source_workload_type (optional)
        - workload_type (required)
Optional:
    - availability_domain
    - defined_tags
    - description
    - freeform_tags
    - lifecycle_details
    - request_state
    - request_type
    - patch_operations (block):
        - from (required)
        - operation (required)
        - position (optional)
        - selected_item (optional)
        - selection (required)
        - value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                  = string
    date_expected_capacity_handover = string
    display_name                    = string
    namespace                       = string
    occ_availability_catalog_id     = string
    region                          = string
    availability_domain             = optional(string)
    defined_tags                    = optional(map(string))
    description                     = optional(string)
    freeform_tags                   = optional(map(string))
    lifecycle_details               = optional(string)
    request_state                   = optional(string)
    request_type                    = optional(string)
    details = list(object({
      actual_handover_quantity = optional(string)
      associated_occ_handover_resource_block_list = optional(list(object({
        handover_quantity              = optional(string)
        occ_handover_resource_block_id = optional(string)
      })))
      availability_domain        = optional(string)
      date_actual_handover       = optional(string)
      date_expected_handover     = optional(string)
      demand_quantity            = string
      expected_handover_quantity = optional(string)
      resource_name              = string
      resource_type              = string
      source_workload_type       = optional(string)
      workload_type              = string
    }))
    patch_operations = optional(list(object({
      from          = string
      operation     = string
      position      = optional(string)
      selected_item = optional(string)
      selection     = string
      value         = map(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.capacity_management_occ_capacity_requests : (
        length(v.details) >= 1
      )
    ])
    error_message = "Each details list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.capacity_management_occ_capacity_requests : (
        v.patch_operations == null || alltrue([for item in v.patch_operations : (contains([for v in ["INSERT", "INSERT_MULTIPLE", "MERGE", "MOVE", "PROHIBIT", "REMOVE", "REPLACE", "REQUIRE"] : lower(v)], lower(item.operation)))])
      )
    ])
    error_message = "must be one of: \"INSERT\", \"INSERT_MULTIPLE\", \"MERGE\", \"MOVE\", \"PROHIBIT\", \"REMOVE\", \"REPLACE\", \"REQUIRE\""
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

