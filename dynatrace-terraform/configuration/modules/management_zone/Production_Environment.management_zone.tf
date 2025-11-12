resource "dynatrace_management_zone_v2" "Production_Environment" {
  name = "Production Environment"
  rules {
    rule {
      enabled = true
      type    = "ME"
      attribute_rule {
        entity_type                                      = "SERVICE"
        azure_to_pgpropagation                           = false
        azure_to_service_propagation                     = false
        custom_device_group_to_custom_device_propagation = false
        host_to_pgpropagation                            = false
        pg_to_host_propagation                           = false
        pg_to_service_propagation                        = false
        service_to_host_propagation                      = true
        service_to_pgpropagation                         = true
        attribute_conditions {
          condition {
            case_sensitive = false
            key            = "SERVICE_NAME"
            operator       = "CONTAINS"
            string_value   = "prod"
          }
        }
      }
    }
  }
}
