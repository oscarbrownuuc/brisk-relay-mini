#!/usr/bin/env bash
# brisk-relay-mini — Game developer · Scala and Spark
# 自用小脚本
set -euo pipefail

tmp=$(mktemp)
trap 'rm -f "$tmp"' EXIT

cat > "$tmp"

sort "$tmp" | uniq -c | sort -rn
echo "---"
echo "$(sort -u "$tmp" | wc -l | tr -d ' ') unique"
