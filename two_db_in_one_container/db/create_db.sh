#!/bin/bash
set -e

POSTGRES="psql --username ${POSTGRES_USER}"

echo "Creating database: ${DB_1_NAME}"
echo "Creating database: ${DB_2_NAME}"

$POSTGRES <<EOSQL
CREATE DATABASE ${DB_1_NAME} OWNER ${DB_USER};
CREATE DATABASE ${DB_2_NAME} OWNER ${DB_USER};
EOSQL
