#!/bin/sh

declare -a voices=(
    "cmu-slt"
    "bits1"
    "bits1-hsmm"
    "bits2"
    "bits3"
    "bits3-hsmm"
    "bits4"
    "dfki-pavoque-neutral"
    "dfki-pavoque-neutral-hsmm"
    "dfki-pavoque-styles"
)

for i in "${voices[@]}"
do
    ./marytts install:${i}
done