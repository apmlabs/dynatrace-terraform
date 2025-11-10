resource "dynatrace_management_zone_v2" "EasyTrade" {
  name = "EasyTrade v2"
  rules {
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type           = "HOST"
        host_to_pgpropagation = true
        attribute_conditions {
          condition {
            key          = "KUBERNETES_CLUSTER_NAME"
            operator     = "EQUALS"
            case_sensitive = true
            string_value = "dynakube"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type                 = "PROCESS_GROUP"
        pg_to_host_propagation      = true
        pg_to_service_propagation   = true
        attribute_conditions {
          condition {
            key          = "CLOUD_APPLICATION_NAMESPACE_NAME"
            operator     = "EQUALS"
            case_sensitive = false
            string_value = "easytrade"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "CLOUD_APPLICATION"
        attribute_conditions {
          condition {
            key          = "CLOUD_APPLICATION_NAMESPACE_NAME"
            operator     = "EQUALS"
            case_sensitive = false
            string_value = "easytrade"
          }
        }
      }
    }
  }
}
