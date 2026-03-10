#!/bin/bash
# Bash script used to upload data to sharepoint
# Resume-friendly rclone sync script with throttle prevention
# @author: P Gordijn

# Source and destination
SRC="$HOME/Documents/reference_arc/"
DEST="bspi:/General/08_BSPI Protocols/For Review/BSPI_citation_db/"

# Log file location --- keeps log of file transfers
LOGFILE="$HOME/rclone_upload_$(date +'%Y%m%d_%H%M%S').log"

# Run rclone with safe settings
#echo "Running dry-run to check what will be synced..."
rclone sync "$SRC" "$DEST" \
  --exclude "forticlient_details/**" \
  --progress \
  --checkers=8 \
  --transfers=4 \
  --tpslimit=8 \
  --retries=10 \
  --low-level-retries=20 \
  --retries-sleep=30s \
  --bwlimit=0 \
  --log-file="$LOGFILE" \
  --ignore-checksum
#  --dry-run
#echo "Dry-run complete. If output looks correct, remove --dry-run to perform real sync."
