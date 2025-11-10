resource "dynatrace_alerting" "Custom_Demo_Profile" {
  name = "Custom Demo Profile"
  rules {
    rule {
      include_mode     = "INCLUDE_ANY"
      tags             = ["Environment:Production"]
      delay_in_minutes = 5
      severity_level   = "AVAILABILITY"
    }
    rule {
      include_mode     = "INCLUDE_ALL"
      tags             = ["Team:Backend"]
      delay_in_minutes = 15
      severity_level   = "ERRORS"
    }
    rule {
      include_mode     = "NONE"
      delay_in_minutes = 45
      severity_level   = "PERFORMANCE"
    }
    rule {
      include_mode     = "NONE"
      delay_in_minutes = 10
      severity_level   = "CUSTOM_ALERT"
    }
  }
}
