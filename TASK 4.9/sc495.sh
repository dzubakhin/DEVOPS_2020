#!/bin/bash
echo Symbol count for \"$1\":|tr "\n" " ";echo $1|tr -d "\n"|wc -m|tr "\n" " ";echo characters