# Go Coverage Threshold

This action runs package tests for a Go module, and returns success only
if the reported total coverage is equal to or greater than a set threshold.

## Inputs
### `threshold`
The coverage threshold to be met.
**Required**: false
**Type:** An Integer between `0` & `100`
**Default:** `80`

## Outputs
### `coverage`
The total coverage reported from the package tests.
**Type:** An Integer between `0` & `100`

## Example usage

uses: actions/go-coverage-threshold@v1
with:
  threshold: 95
