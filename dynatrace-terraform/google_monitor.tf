resource "dynatrace_http_monitor" "google_monitor" {
  name      = "Google.com Monitor"
  enabled   = true
  frequency = 1
  locations = ["GEOLOCATION-9999453BE4BDB3CD", "GEOLOCATION-388A5AD15726CB6F"]
  
  tags {
    tag {
      context = "CONTEXTLESS"
      key     = "google.com"
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
          value         = ">=200,<300"
          pass_if_found = true
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
