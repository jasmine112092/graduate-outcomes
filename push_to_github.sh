#!/usr/bin/env bash
# 一键把 graduate-outcomes-dashboard 推送到 GitHub 仓库（jasmine112092）
# 用法: 先 cd 到本脚本所在目录，然后:
#   ./push_to_github.sh

set -e

REPO_NAME="graduate-outcomes-dashboard"
GITHUB_USER="jasmine112092"

echo "==> 初始化 git 仓库（如尚未初始化）"
git init -q 2>/dev/null || true

echo "==> 暂存所有文件"
git add -A

echo "==> 提交"
git commit -q -m "毕业生去向工作台：Class of 2024-2026 海外升学数据可视化 PWA" 2>/dev/null \
  || echo "（没有新的改动需要提交，或已提交过）"

echo "==> 检查远程仓库"
if ! git remote | grep -q origin; then
  echo "请输入你的 GitHub 远程地址，例如 git@github.com:${GITHUB_USER}/${REPO_NAME}.git"
  read -rp "远程地址: " REMOTE_URL
  git remote add origin "$REMOTE_URL"
fi

echo "==> 推送到 GitHub"
git branch -M main
git push -u origin main

echo ""
echo "完成！访问 https://${GITHUB_USER}.github.io/${REPO_NAME}/ 可查看（需在仓库 Settings→Pages 启用）"
