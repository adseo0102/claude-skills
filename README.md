# CCFM Claude Code Skills

CCFM AI 스터디에서 사용하는 Claude Code 커스텀 스킬 모음입니다.

## 폴더 구조

```
education/     ← 교육용 (기본판: WebSearch만, Vercel 배포 없음)
personal/      ← 개인용 (고급: Gemini 교차검증 + Vercel 자동 배포)
```

## 교육용 스킬 설치

```bash
git clone https://github.com/axseo-education/claude-skills.git
bash claude-skills/install.sh
```

## 포함된 스킬

| 스킬 | 설명 |
|------|------|
| `/cardnews` | 카드뉴스 자동 제작 (리서치 → 기획 → HTML → PNG) |
| `/viz` | 데이터 시각화 (대시보드, 인포그래픽, 슬라이드 등) |
| `/landing` | 랜딩페이지 자동 제작 |
| `/competitor` | 경쟁사 분석 리포트 |
| `/ad-copy` | 광고 카피 생성기 |

## 스킬 커스텀 (단계별)

### Step 1: Gemini API 교차검증 추가
1. [Google AI Studio](https://aistudio.google.com)에서 API 키 발급
2. 환경변수 설정: `GEMINI_API_KEY`
3. gemini-tools 설치: `git clone https://github.com/axseo-education/gemini-tools.git ~/gemini-tools`
4. 스킬 파일에 Gemini 검증 단계 추가 (매뉴얼 참조)

### Step 2: Vercel 자동 배포 추가
1. `npm install -g vercel`
2. `vercel login`
3. 스킬 파일에 배포 단계 추가 (매뉴얼 참조)

## 매뉴얼
- [커리큘럼 로드맵](https://ccfm-viz-curriculum-roadmap.vercel.app)
- [M1. 시작하기](https://ccfm-m1-concept.vercel.app)