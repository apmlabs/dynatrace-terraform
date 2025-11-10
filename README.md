# Dynatrace Terraform Export Tools

Export Dynatrace configurations to Terraform format for infrastructure as code management.

## Overview

This toolkit provides utilities to export existing Dynatrace configurations and convert them to Terraform format, enabling:
- Configuration backup and version control
- Environment migration and replication
- Infrastructure as code workflows
- Cross-tenant configuration management

## Features

- **Complete Configuration Export**: Export all supported Dynatrace resources
- **Terraform Format**: Generate ready-to-use Terraform configurations
- **Modular Structure**: Organized output with proper module structure
- **Multiple Authentication**: Support for API tokens, OAuth, and Platform tokens
- **Cross-Environment**: Deploy configurations across different Dynatrace tenants

## Quick Start

### Prerequisites
- Terraform installed
- Dynatrace environment with API access
- Valid API token with appropriate permissions

### Setup
1. Clone this repository
2. Configure environment variables:
   ```bash
   export DT_ENV_URL="https://your-tenant.dynatrace.com"
   export DT_API_TOKEN="dt0c01.YOUR_TOKEN_HERE"
   ```

### Basic Usage
```bash
# Export all configurations
terraform init
terraform plan
terraform apply

# Export specific resources
terraform import dynatrace_alerting_profile.example "profile-id"
```

## Supported Resources

- **Alerting Profiles**: Custom alerting configurations
- **Management Zones**: Environment segmentation
- **Dashboards**: Custom monitoring dashboards
- **SLOs**: Service level objectives
- **Synthetic Monitors**: Synthetic monitoring configurations
- **And many more...**

## Documentation

- **[AGENTS.md](./AGENTS.md)** - Detailed deployment and usage instructions
- **[GITHUB.md](./GITHUB.md)** - Repository setup and security guidelines
- **[dynatrace-terraform-docs.md](./dynatrace-terraform-docs.md)** - Complete resource reference

## Authentication

### API Token (Recommended)
```bash
export DT_ENV_URL="https://your-tenant.dynatrace.com"
export DT_API_TOKEN="dt0c01.YOUR_TOKEN_HERE"
```

### OAuth (Advanced)
```bash
export DT_ENV_URL="https://your-tenant.dynatrace.com"
export DT_CLIENT_ID="your-client-id"
export DT_CLIENT_SECRET="your-client-secret"
```

## Security

- Never commit `secrets.yaml` or credential files
- Use environment variables for sensitive data
- Verify exported configurations contain no secrets
- Keep Terraform state files secure

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is licensed under the MIT License.

## Support

For issues and questions:
- Check the [AGENTS.md](./AGENTS.md) for detailed instructions
- Review the [documentation](./dynatrace-terraform-docs.md)
- Open an issue for bugs or feature requests
