#!/usr/bin/env bash

set -e
set -o pipefail

UPLOAD_URL=$1
FILE=$2

#Upload Asset
curl \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Content-Type: application/zip" \
  --data-binary @$FILE "$UPLOAD_URL"