
#!/bin/sh -e

# Lets add the extensions to template1 so that any CREATE DATABASE .. can have them right away
psql -d template1 -c "CREATE EXTENSION IF NOT EXISTS hstore SCHEMA pg_catalog;"
psql -d template1 -c "CREATE EXTENSION IF NOT EXISTS pg_trgm SCHEMA pg_catalog;"
