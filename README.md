# Go Coverage Threshold

This action runs package tests for a Go module, and returns success only
if the reported total coverage is equal to or greater than a set threshold.

How reported total coverage is determined.

```
$ go test ./... -coverprofile=cover.out && go tool cover -func=cover.out

# ok      bare    0.370s  coverage: 20.0% of statements
# ok      bare/tools      0.182s  coverage: 66.7% of statements
# ok      bare/x  0.277s  coverage: 100.0% of statements
# bare/main.go:11:        init            100.0%
# bare/main.go:15:        main            0.0%
# bare/tools/tools.go:9:  P               66.7%
# bare/x/x.go:7:          Wrap            100.0%
# total:                  (statements)    44.4% <--THIS TOTAL

```

## Inputs
### `threshold`
The coverage threshold to be met.

|            |                                |
|:-----------|:-------------------------------|
|**Required**| false                          |
|**Type**    | An Integer between `0` & `100` |
|**Default** | `80`                           |

## Outputs
### `coverage`
The total coverage reported from the package tests.
**Type:** An Integer between `0` & `100`

## Example usage

```
uses: actions/go-coverage-threshold@v1
with:
  threshold: 95
```
