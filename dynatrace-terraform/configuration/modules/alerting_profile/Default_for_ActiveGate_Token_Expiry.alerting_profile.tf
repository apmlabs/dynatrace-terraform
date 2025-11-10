resource "dynatrace_alerting" "Default_for_ActiveGate_Token_Expiry" {
  name = "Default for ActiveGate Token Expiry"
  filters {
    filter {
      custom {
        title {
          enabled  = true
          operator = "STRING_EQUALS"
          value    = "ActiveGate Token(s) will expire soon"
        }
      }
    }
  }
  rules {
    rule {
      include_mode     = "NONE"
      delay_in_minutes = 0
      severity_level   = "CUSTOM_ALERT"
    }
  }
}
