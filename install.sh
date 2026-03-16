#!/bin/bash
# CCFM Claude Code Skills 자동 설치 스크립트

echo "📦 CCFM 스킬 설치를 시작합니다..."

# commands 폴더 생성
mkdir -p ~/.claude/commands

# 스크립트가 있는 디렉토리 찾기
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# 스킬 파일 복사
cp "$SCRIPT_DIR"/cardnews.md ~/.claude/commands/
cp "$SCRIPT_DIR"/viz.md ~/.claude/commands/

echo "✅ 설치 완료!"
echo ""
echo "설치된 스킬:"
ls -1 ~/.claude/commands/*.md 2>/dev/null | while read f; do
  echo "  /$(basename "$f" .md)"
done
echo ""
echo "Claude Code에서 / 입력 후 스킬을 사용하세요."
