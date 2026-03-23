#!/bin/bash
trap 'echo "Error on line $LINENO"; exit 1' ERR

cp file1 file2
rm file2   # triggers trap