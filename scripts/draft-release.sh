#!/usr/bin/env bash

set -e
set -o pipefail

if [[ -z "$GITHUB_TOKEN" ]]; then
  echo "Set the GITHUB_TOKEN env variable."
  exit 1
fi

body='{
  "tag_name": "'${1}'",
  "target_commitish": "master",
  "name": "'${1}'",
  "body": "Draft release for '${1}'",
  "draft": true,
  "prerelease": false
}'
echo $body

#Draft Release
RELEASEID=curl \
  -sSL \
  -X POST \
  -H "Authorization: token ${GITHUB_TOKEN}" \
  --data "$($body)" \
  "https://api.github.com/repos/${GITHUB_REPOSITORY}/releases}"| \
  python -c "import sys, json; print json.load(sys.stdin)['id']"


#Upload Assets