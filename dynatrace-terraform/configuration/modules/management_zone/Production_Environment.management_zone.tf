resource "dynatrace_management_zone_v2" "Production_Environment" {
  name = "Production Environment"
  rules {
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type                 = "SERVICE"
        service_to_host_propagation = true
        service_to_pgpropagation    = true
        attribute_conditions {
          condition {
            key          = "SERVICE_NAME"
            operator     = "CONTAINS"
            case_sensitive = false
            string_value = "prod"
          }
        }
      }
    }
  }
}
