#!/bin/bash

# Database credentials
DB_USER="mgtwwtytpk"
DB_PASS="kBM2KG9aXf"
DB_NAME="mgtwwtytpk"

# Backup directory
BACKUP_DIR="./"
TIMESTAMP=20231008104435
BACKUP_FILE="./backup_20231008102223.sql"

# Dump the database to a backup file
mysqldump --user=$BD_USER --password=$DB_PASS --host=localhost $DB_NAME > ./backup_20231008102223.sql

# Clean up old backups (optional)
find ./ type f -mtime +7 -exec rm {} \;


