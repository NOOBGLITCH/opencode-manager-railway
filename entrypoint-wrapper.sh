#!/bin/sh
set -e

if [ -z "${AUTH_SECRET:-}" ]; then
  export AUTH_SECRET="$(openssl rand -hex 32 2>/dev/null || cat /proc/sys/kernel/random/uuid)"
fi
if [ -z "${ADMIN_EMAIL:-}" ]; then
  export ADMIN_EMAIL="admin@example.com"
fi
if [ -z "${ADMIN_PASSWORD:-}" ]; then
  export ADMIN_PASSWORD="OC-workspace-2026!"
fi

if [ -n "${RAILWAY_PUBLIC_DOMAIN:-}" ]; then
  if [ -z "${AUTH_TRUSTED_ORIGINS:-}" ]; then
    export AUTH_TRUSTED_ORIGINS="http://localhost:5003,https://${RAILWAY_PUBLIC_DOMAIN}"
  fi
  if [ -z "${PASSKEY_ORIGIN:-}" ]; then
    export PASSKEY_ORIGIN="https://${RAILWAY_PUBLIC_DOMAIN}"
  fi
  if [ -z "${PASSKEY_RP_ID:-}" ]; then
    export PASSKEY_RP_ID="${RAILWAY_PUBLIC_DOMAIN}"
  fi
fi

export NODE_ENV="${NODE_ENV:-production}"
export HOST="${HOST:-0.0.0.0}"
export PORT="${PORT:-5003}"
export AUTH_SECURE_COOKIES="${AUTH_SECURE_COOKIES:-false}"
export PUID="${PUID:-1000}"
export PGID="${PGID:-1000}"

exec /docker-entrypoint.sh "$@"
