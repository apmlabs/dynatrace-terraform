resource "dynatrace_http_monitor" "Google_com_Monitor" {
  name      = "Google.com Monitor"
  enabled   = true
  frequency = 1
  locations = [ "GEOLOCATION-9999453BE4BDB3CD", "GEOLOCATION-388A5AD15726CB6F" ]
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
  script {
    request {
      description = "Check Google.com availability"
      method      = "GET"
      url         = "https://google.com"
      configuration {
        accept_any_certificate = true
        follow_redirects       = true
      }
      validation {
        rule {
          type          = "httpStatusesList"
          pass_if_found = true
          value         = ">=200,<300"
        }
      }
    }
  }
}
