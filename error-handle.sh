#!/bin/bash
trap 'echo "Error is in $LINENO"; exit 1' ERR

cp file.txt file2.txt
rm new.txt

