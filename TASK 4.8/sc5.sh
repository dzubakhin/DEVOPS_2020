#!/bin/bash
awk '{print "The date of creation is" "\t| " $6 " " $7 " " $8 " " "\t| " "for a file" "\t| " $9}' task48.txt > task484.txt