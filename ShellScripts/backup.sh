#!/bin/bash

# Student: Judhistir Behera
# Roll Number: 2601730433

echo "=================================="
echo "       AUTOMATIC BACKUP TOOL"
echo "=================================="

if [ -z "$1" ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: Folder does not exist!"
    exit 1
fi

mkdir -p ~/DeveloperPortfolio_Backups

TIME=$(date +%Y-%m-%d_%H-%M-%S)
FILENAME="backup_${TIME}.tar.gz"

tar -czf ~/DeveloperPortfolio_Backups/$FILENAME \
-C "$(dirname "$1")" "$(basename "$1")"

SIZE=$(du -h ~/DeveloperPortfolio_Backups/$FILENAME | awk '{print $1}')

echo "Student: Judhistir Behera"
echo "Roll Number: 2601730433"
echo "Backup created successfully!"
echo "Filename: $FILENAME"
echo "Backup size: $SIZE"

echo "$(date) SUCCESS $FILENAME $SIZE" >> ~/DeveloperPortfolio_Backups/backup.log

echo "Backup log updated successfully!"
