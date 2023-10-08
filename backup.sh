#!/bin/bash

# Database credentials
DB_USER="mgtwwtytpk"
DB_PASS="kBM2KG9aXf"
DB_NAME="mgtwwtytpk"

# Backup directory
BACKUP_DIR="/tmp"
TIMESTAMP=20231008103943
BACKUP_FILE="/tmp/backup_20231008102223.sql"

# Dump the database to a backup file
mysqldump --user=your_db_user --password=your_db_password --host=localhost your_db_name > /tmp/backup_20231008102223.sql

# Clean up old backups (optional)
find /tmp -type f -mtime +7 -exec rm {} \;


