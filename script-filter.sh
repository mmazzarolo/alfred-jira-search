#!/bin/bash

# Base URL of the API call
baseurl="https://${domain}.atlassian.net/rest/api/3/issue/picker"

#Even tried this with no luck
curl -G -v -S $baseurl --data-urlencode "query=${1}" -H $header | /usr/local/bin/jq '.sections[0].issues | map({uid: .id, title: .key, subtitle: .summaryText, arg: .key }) | { items: . }'