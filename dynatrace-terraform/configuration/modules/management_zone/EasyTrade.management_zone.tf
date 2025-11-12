resource "dynatrace_management_zone_v2" "EasyTrade" {
  name = "EasyTrade v2"
  rules {
    rule {
      enabled = true
      type    = "ME"
      attribute_rule {
        entity_type                                      = "CLOUD_APPLICATION"
        azure_to_pgpropagation                           = false
        azure_to_service_propagation                     = false
        custom_device_group_to_custom_device_propagation = false
        host_to_pgpropagation                            = false
        pg_to_host_propagation                           = false
        pg_to_service_propagation                        = false
        service_to_host_propagation                      = false
        service_to_pgpropagation                         = false
        attribute_conditions {
          condition {
            case_sensitive = false
            key            = "CLOUD_APPLICATION_NAMESPACE_NAME"
            operator       = "EQUALS"
            string_value   = "easytrade"
          }
        }
      }
    }
    rule {
      enabled = true
      type    = "ME"
      attribute_rule {
        entity_type                                      = "PROCESS_GROUP"
        azure_to_pgpropagation                           = false
        azure_to_service_propagation                     = false
        custom_device_group_to_custom_device_propagation = false
        host_to_pgpropagation                            = false
        pg_to_host_propagation                           = true
        pg_to_service_propagation                        = true
        service_to_host_propagation                      = false
        service_to_pgpropagation                         = false
        attribute_conditions {
          condition {
            case_sensitive = false
            key            = "CLOUD_APPLICATION_NAMESPACE_NAME"
            operator       = "EQUALS"
            string_value   = "easytrade"
          }
        }
      }
    }
    rule {
      enabled = true
      type    = "ME"
      attribute_rule {
        entity_type                                      = "HOST"
        azure_to_pgpropagation                           = false
        azure_to_service_propagation                     = false
        custom_device_group_to_custom_device_propagation = false
        host_to_pgpropagation                            = true
        pg_to_host_propagation                           = false
        pg_to_service_propagation                        = false
        service_to_host_propagation                      = false
        service_to_pgpropagation                         = false
        attribute_conditions {
          condition {
            case_sensitive = true
            key            = "KUBERNETES_CLUSTER_NAME"
            operator       = "EQUALS"
            string_value   = "dynakube"
          }
        }
      }
    }
  }
}
