#!/bin/bash
# CCFM Claude Code Skills 자동 설치 스크립트
# 교육용 스킬을 설치합니다 (기본판: WebSearch만, Vercel 배포 없음)

echo "📦 CCFM 스킬 설치를 시작합니다..."

# commands 폴더 생성
mkdir -p ~/.claude/commands

# 스크립트가 있는 디렉토리 찾기
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# 교육용 스킬 파일 복사
cp "$SCRIPT_DIR"/education/*.md ~/.claude/commands/

echo "✅ 설치 완료!"
echo ""
echo "설치된 스킬:"
ls -1 ~/.claude/commands/*.md 2>/dev/null | while read f; do
  echo "  /$(basename "$f" .md)"
done
echo ""
echo "Claude Code에서 / 입력 후 스킬을 사용하세요."
echo ""
echo "💡 스킬 커스텀 가이드:"
echo "  - Gemini API 교차검증 추가 → 매뉴얼 참조"
echo "  - Vercel 자동 배포 추가 → 매뉴얼 참조"