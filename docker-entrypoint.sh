#!/bin/bash
set -e

# If COUCHDB_USER_FILE is passed, read its content into COUCHDB_USER
if [ -n "$COUCHDB_USER_FILE" ] && [ -f "$COUCHDB_USER_FILE" ]; then
    export COUCHDB_USER="$(cat "$COUCHDB_USER_FILE")"
fi

# If COUCHDB_USER_FILE is passed, read its content into COUCHDB_USER
if [ -n "$COUCHDB_PASSWORD_FILE" ] && [ -f "$COUCHDB_PASSWORD_FILE" ]; then
    export COUCHDB_PASSWORD="$(cat "$COUCHDB_PASSWORD_FILE")"
fi

# If COUCHDB_SECRET_FILE is passed, read its content into COUCHDB_SECRET
if [ -n "$COUCHDB_SECRET_FILE" ] && [ -f "$COUCHDB_SECRET_FILE" ]; then
    export COUCHDB_SECRET="$(cat "$COUCHDB_SECRET_FILE")"
fi

exec /docker-entrypoint-original.sh "$@"