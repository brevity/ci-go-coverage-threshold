#!/usr/bin/env bash

/usr/local/go/bin/go test ./... -coverprofile=cover.out #&>/dev/null

threshold=$1
total=$(
  /usr/local/go/bin/go tool cover -func=cover.out \
  | tail -n1 \
  | awk '{split($3,x,".");print x[1] "%"}'|sed 's/\%//'
)
echo "::set-output name=coverage::$total"
if [[ $total -lt $threshold ]]; then
  echo "FAIL: Total coverage $total% does NOT meet threshold of $threshold%"
  exit 1
else
  echo "OK: Total coverage $total% DOES meet threshold of $threshold%"
  exit 0
fi
