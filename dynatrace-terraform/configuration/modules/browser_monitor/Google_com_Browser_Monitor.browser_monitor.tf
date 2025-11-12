resource "dynatrace_browser_monitor" "Google_com_Browser_Monitor" {
  name      = "Google.com Browser Monitor"
  enabled   = true
  frequency = 5
  locations = [ "GEOLOCATION-0DF9A0E1095A5A62", "GEOLOCATION-388A5AD15726CB6F" ]
  anomaly_detection {
    loading_time_thresholds {
      enabled = true
    }
    outage_handling {
      global_outage    = true
      # local_outage   = false
      # retry_on_error = false
      global_outage_policy {
        consecutive_runs = 3
      }
    }
  }
  key_performance_metrics {
    load_action_kpm = "VISUALLY_COMPLETE"
    xhr_action_kpm  = "VISUALLY_COMPLETE"
  }
  script {
    type = "availability"
    configuration {
      # bypass_csp           = false
      # disable_web_security = false
      # monitor_frames       = false
      device {
        name        = "Desktop"
        orientation = "landscape"
      }
    }
    events {
      event {
        description = "Navigate to Google.com"
        navigate {
          url = "https://google.com"
          wait {
            wait_for = "page_complete"
          }
        }
      }
    }
  }
}
