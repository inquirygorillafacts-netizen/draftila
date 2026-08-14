#!/bin/bash
bun run --filter @draftila/api db:migrate
bun run apps/api/src/commands/create-admin.ts --email "$ADMIN_EMAIL" --password "$ADMIN_PASSWORD"
bun run --filter @draftila/api start
