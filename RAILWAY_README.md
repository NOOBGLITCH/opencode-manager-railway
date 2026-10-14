# Deploy and Host

Deploy OpenCode Manager on Railway in minutes using the published upstream image.

## About Hosting

OpenCode Manager runs as a single container from `ghcr.io/chriswritescode-dev/opencode-manager:latest` on port `5003`. Railway provisions the service, public domain, and a persistent volume for `/app/data`.

## Why Deploy

- Mobile-first web UI for OpenCode AI agents
- Built-in health checks and automatic OpenCode supervision
- Persistent storage for database and workspace data
- One-click public access with SSL

## Common Use Cases

- Host a personal/team coding agent workspace
- Manage repositories, sessions, schedules, and MCP servers from any device
- Run recurring repo jobs on a managed platform

## Dependencies for

### Deployment Dependencies

- Upstream image: `ghcr.io/chriswritescode-dev/opencode-manager:latest`
- OpenCode 2.0.15+ (bundled)
- Persistent volume at `/app/data`

Default admin password (`ADMIN_PASSWORD`) is `OC-workspace-2026!`; change it before sharing the deployment.
