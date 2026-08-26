#!/usr/bin/env bash
set -e
REPO_NAME="graduate-outcomes-dashboard"
GITHUB_USER="jasmine112092"
git init -q 2>/dev/null || true
git add -A
git commit -q -m "毕业生去向工作台：Class of 2024-2026 海外升学数据可视化 PWA" 2>/dev/null || echo "无新改动可提交"
if ! git remote | grep -q origin; then
  read -rp "请输入 GitHub 远程地址 (如 git@github.com:${GITHUB_USER}/${REPO_NAME}.git): " REMOTE_URL
  git remote add origin "$REMOTE_URL"
fi
git branch -M main
git push -u origin main
echo "完成！访问 https://${GITHUB_USER}.github.io/${REPO_NAME}/（需启用 Pages）"
