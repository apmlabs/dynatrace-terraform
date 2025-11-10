resource "dynatrace_alerting" "Default" {
  name = "Default"
  rules {
    rule {
      include_mode     = "NONE"
      delay_in_minutes = 0
      severity_level   = "AVAILABILITY"
    }
    rule {
      include_mode     = "NONE"
      delay_in_minutes = 0
      severity_level   = "CUSTOM_ALERT"
    }
    rule {
      include_mode     = "NONE"
      delay_in_minutes = 0
      severity_level   = "ERRORS"
    }
    rule {
      include_mode     = "NONE"
      delay_in_minutes = 0
      severity_level   = "MONITORING_UNAVAILABLE"
    }
    rule {
      include_mode     = "NONE"
      delay_in_minutes = 30
      severity_level   = "PERFORMANCE"
    }
    rule {
      include_mode     = "NONE"
      delay_in_minutes = 30
      severity_level   = "RESOURCE_CONTENTION"
    }
  }
}
