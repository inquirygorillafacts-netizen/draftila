#!/bin/bash
bun run --filter @draftila/api db:migrate
bun run --filter @draftila/api db:create-admin -- --email $ADMIN_EMAIL --password $ADMIN_PASSWORD
bun run --filter @draftila/api start
