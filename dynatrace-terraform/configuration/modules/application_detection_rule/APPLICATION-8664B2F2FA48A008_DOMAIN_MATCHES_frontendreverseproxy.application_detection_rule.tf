resource "dynatrace_application_detection_rule" "APPLICATION-8664B2F2FA48A008_DOMAIN_MATCHES_frontendreverseproxy" {
  application_identifier = "APPLICATION-8664B2F2FA48A008"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "frontendreverseproxy"
  }
}
