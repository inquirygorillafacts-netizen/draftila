#!/bin/bash
bun run --filter @draftila/api db:migrate
bun run apps/api/src/commands/create-admin.ts --email "admin@draftila.app" --password "Draftila2026Secure"
bun run --filter @draftila/api start
