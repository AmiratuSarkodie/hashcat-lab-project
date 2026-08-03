#!/bin/bash
while read pass; do
  echo -n "$pass" | md5sum | cut -d" " -f1
done < rockyou.txt > target_hashes.txt
