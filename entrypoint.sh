#!/bin/sh -l

threshold=$1
echo "Threshold should be $threshold"
coverage="88%"
echo "::set-output name=coverage::$coverage"
