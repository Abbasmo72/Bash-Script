#!/usr/bin/env bash

# Check if jq is installed, which is required to parse JSON output
if ! [ -x "$(command -v jq)" ]; then
  echo 'Error: jq is not installed. Install via https://stedolan.github.io/jq/download/'
  exit 1
fi

# Ensure that exactly one argument (IP address) is provided
if [[ $# -ne 1 ]]; then
  echo 'Provide an IP address as a command-line parameter. Usage: ' $0 ' 15.45.0.1 '
  exit 1
fi

# Construct the API request URL
link="http://ip-api.com/json/$1"

# Fetch data from the API (silent mode to suppress progress output)
data=$(curl -s $link)

# Extract the status field from the API response
status=$(echo $data | jq '.status' -r)

# If the API response indicates success, extract and display location details
if [[ $status == "success" ]]; then
  city=$(echo $data | jq '.city' -r)
  regionName=$(echo $data | jq '.regionName' -r)
  country=$(echo $data | jq '.country' -r)
  echo "$city, $regionName in $country."
fi
