#!/usr/bin/env bash

set -e
set -o pipefail

if [[ -z "$GITHUB_TOKEN" ]]; then
  echo "Set the GITHUB_TOKEN env variable."
  exit 1
fi

body='{
  "tag_name": "'${GITHUB_REF}'",
  "target_commitish": "master",
  "name": "'${GITHUB_REF}'",
  "body": "Draft release for '${GITHUB_REF}'",
  "draft": true,
  "prerelease": false
}'
echo $body

#Draft Release
RAW_URL=$(curl -X POST -H "Authorization: token $GITHUB_TOKEN" \
  --data "$body" "https://api.github.com/repos/$GITHUB_REPOSITORY/releases" |
  jq -r '.upload_url')

#Prepare Upload
PATTERN="{?name,label}"
REPLACE=""
UPLOAD_URL=${RAW_URL/PATTERN/REPLACE}

echo $UPLOAD_URL
