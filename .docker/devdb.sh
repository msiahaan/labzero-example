#!/bin/sh
# shellcheck shell=sh
set -e

psql "postgresql://$POSTGRES_USER@:5432/$POSTGRES_DB" -v ON_ERROR_STOP=1 <<-EOSQL
  CREATE USER myapp_dev WITH PASSWORD 'secret';
  CREATE DATABASE myapp_dev;
  GRANT ALL PRIVILEGES ON DATABASE myapp_dev TO myapp_dev;
  ALTER USER myapp_dev SUPERUSER;
EOSQL

psql -v ON_ERROR_STOP=1 "postgresql://$POSTGRES_USER@:5432/myapp_dev" <<-EOSQL
  CREATE EXTENSION IF NOT EXISTS pgcrypto;
  SELECT gen_random_uuid();
EOSQL
