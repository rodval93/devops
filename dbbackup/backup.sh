#!/bin/bash

set -a
[ -f .env ] && . .env
set +a

BACKUP_DIR="backups"
TIMESTAMP=$(date +%F_%T)

if [ ! -d "$BACKUP_DIR" ]; then
  mkdir -p "$BACKUP_DIR"
fi

mysqldump -h "$DB_HOST" -u "$DB_USER" "$DB_NAME" > "$BACKUP_DIR/${DB_NAME}_backup_$TIMESTAMP.sql"

if [ $? -eq 0 ]; then
  echo "$BACKUP_DIR/${DB_NAME}_backup_$TIMESTAMP.sql"
else
  echo "Backup failed!"
  exit 1
fi

