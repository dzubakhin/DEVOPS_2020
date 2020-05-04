#!/bin/bash
awk '$9 ~ /[0-9]/ {print $9}' task48.txt > task485.txt