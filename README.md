# CCFM Claude Code Skills

CCFM AI 스터디에서 사용하는 Claude Code 커스텀 스킬 모음입니다.

## 포함된 스킬

| 스킬 | 파일 | 설명 |
|------|------|------|
| `/cardnews` | `cardnews.md` | CCFM 브랜드 카드뉴스 자동 제작 (리서치 → 기획 → HTML → PNG → 웹 배포) |
| `/viz` | `viz.md` | 데이터/아이디어를 CCFM 브랜드 시각화로 변환 (대시보드, 인포그래픽, 슬라이드 등) |

## 설치 방법

### 1. 저장소 클론
```bash
git clone https://github.com/adseo0102/claude-skills.git
```

### 2. 스킬 파일 복사
```bash
# Mac / Linux
mkdir -p ~/.claude/commands
cp claude-skills/*.md ~/.claude/commands/

# Windows (PowerShell)
mkdir -Force $HOME\.claude\commands
copy claude-skills\*.md $HOME\.claude\commands\
```

### 3. 확인
Claude Code를 실행하고 `/`를 입력하면 스킬 목록에 `cardnews`와 `viz`가 보입니다.

## 사용법

```
# 카드뉴스 만들기
/cardnews 광고비를 태우기 전에 반드시 확인해야 할 5가지

# 시각화 만들기
/viz 3월 마케팅 성과 대시보드
```

## 매뉴얼

- [스킬 만들기 실습 가이드](https://ccfm-viz-skill-guide.vercel.app)
- [/cardnews 따라하기](https://ccfm-viz-cardnews-manual.vercel.app)
- [/viz 따라하기](https://ccfm-viz-viz-manual.vercel.app)
