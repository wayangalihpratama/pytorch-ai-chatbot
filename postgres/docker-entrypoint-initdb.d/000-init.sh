#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username postgres <<-EOSQL
	CREATE USER wgprtm WITH CREATEDB PASSWORD '$POSTGRES_PASSWORD';
EOSQL
