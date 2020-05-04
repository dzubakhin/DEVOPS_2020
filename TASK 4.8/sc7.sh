#!/bin/bash
awk '$9 ~ /\.(.+)$/ {print $9}' task48.txt > task486.txt