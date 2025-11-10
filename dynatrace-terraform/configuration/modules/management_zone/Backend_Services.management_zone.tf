resource "dynatrace_management_zone_v2" "Backend_Services" {
  name = "Backend Services"
  rules {
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        attribute_conditions {
          condition {
            key          = "PROCESS_GROUP_NAME"
            operator     = "CONTAINS"
            case_sensitive = false
            string_value = "backend"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "SERVICE"
        attribute_conditions {
          condition {
            key          = "SERVICE_NAME"
            operator     = "CONTAINS"
            case_sensitive = false
            string_value = "api"
          }
        }
      }
    }
  }
}
