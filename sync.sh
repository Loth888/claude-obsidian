#!/bin/bash
# Vault同步脚本

echo "=== Vault同步 ==="
cd "$(dirname "$0")"

echo "1. 拉取远程更改..."
git pull origin main

echo "2. 检查本地更改..."
if [[ -n $(git status -s) ]]; then
    echo "3. 提交本地更改..."
    git add .
    git commit -m "Vault update: $(date '+%Y-%m-%d %H:%M')"
    git push origin main
    echo "✅ 已同步到远程"
else
    echo "✅ 无本地更改"
fi

echo "=== 同步完成 ==="
