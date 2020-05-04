#!/bin/bash
awk '{sub("user","awk_demo");print}' task48.txt > task482b.txt
