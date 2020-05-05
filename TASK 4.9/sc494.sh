#!/bin/bash
echo -e My home directory $HOME contains|tr "\n" " ";ls -l ~| grep ^d | awk '{print $9}'| wc -l|tr "\n" " ";echo directories:;ls -l ~| grep ^d | awk '{print $9}'| tr "\n" " ";echo -e "\n"