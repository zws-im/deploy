#!/bin/ash

BACKUP_FILE="/zws.backup"

pg_dump $DATABASE_URL --file $BACKUP_FILE --verbose --format=c --blobs --compress "2"

# Create repository if it doesn't exist
restic snapshots || restic init

restic backup $BACKUP_FILE
