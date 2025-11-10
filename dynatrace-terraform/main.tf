terraform {
  required_providers {
    dynatrace = {
      source  = "dynatrace-oss/dynatrace"
      version = "~> 1.86"
    }
  }
}

provider "dynatrace" {
  # Configuration via environment variables
}
