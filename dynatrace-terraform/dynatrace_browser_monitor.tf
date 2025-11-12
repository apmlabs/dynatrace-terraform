resource "dynatrace_browser_monitor" "dynatrace_browser_monitor" {
  name      = "Dynatrace.com Browser Monitor"
  enabled   = true
  frequency = 5
  locations = ["GEOLOCATION-9999453BE4BDB3CD", "GEOLOCATION-3F7C50D0C9065578"]
  
  tags {
    tag {
      context = "CONTEXTLESS"
      key     = "dynatrace.com"
    }
  }

  key_performance_metrics {
    load_action_kpm = "VISUALLY_COMPLETE"
    xhr_action_kpm  = "VISUALLY_COMPLETE"
  }

  script {
    type = "availability"
    
    configuration {
      device {
        name        = "Desktop"
        orientation = "landscape"
      }
    }
    
    events {
      event {
        description = "Navigate to Dynatrace.com"
        navigate {
          url = "https://dynatrace.com"
          wait {
            wait_for = "page_complete"
          }
        }
      }
    }
  }

  anomaly_detection {
    loading_time_thresholds {
      enabled = true
    }
    outage_handling {
      global_outage = true
      global_outage_policy {
        consecutive_runs = 3
      }
    }
  }
}
