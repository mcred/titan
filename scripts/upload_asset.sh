#!/usr/bin/env bash

set -e
set -o pipefail

UPLOAD_URL=$1
FILE=$2

#Upload Asset
curl \
  -sSL \
  -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Content-Length: $(stat -c%s "$2")" \
  -H "Content-Type: application/zip" \
  --upload-file "$2" \
  "$UPLOAD_URL"