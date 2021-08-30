#!/bin/sh -l

threshold=$1
echo "Do we have access to the repo? $(ls .)"
echo "Threshold should be $threshold"
coverage="88%"
echo "::set-output name=coverage::$coverage"
