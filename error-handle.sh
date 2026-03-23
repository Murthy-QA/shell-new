#!/bin/bash
trap 'echo "Error on line $LINENO"; exit 1' ERR

cp file1.txt file2.txt
rm file2   # triggers trap