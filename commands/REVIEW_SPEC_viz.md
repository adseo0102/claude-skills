# REVIEW_SPEC — /viz CCFM 시각화 스킬

## 프로젝트 목적
아이디어·데이터·콘텐츠를 CCFM 브랜드 아이덴티티가 적용된 단일 HTML 인터랙티브 시각화로 변환. 별도 수정 없이 프로페셔널하게 보여야 함.

## 핵심 품질 기준 (MUST)
이 기준을 충족하지 않으면 🔴 critical:

1. **데이터 정확성**: 리서치 수치가 출처와 일치해야 함. 차트에 표시된 숫자와 텍스트에 쓰인 숫자가 불일치하면 안 됨
2. **CSS 프로퍼티 11개 전수 체크**: `--bg, --surface, --surface-hover, --border, --text, --text-secondary, --accent, --accent-secondary, --positive, --negative, --warning` — **11개 전부** 정의. 누락 시 테마 전환에서 깨짐
3. **차트 최소 수량**: 대시보드 타입 **차트 최소 2개**, **KPI 카드 3~8개**. KPI 카드 2개 이하는 정보 부족, 9개 이상은 과밀
4. **섹션 구조**: `<section>` **최소 3개**. 단일 섹션에 모든 콘텐츠를 때려넣으면 구조 부재
5. **반응형 2단계 breakpoint**: **768px** (태블릿) + **375px** (모바일) 필수. 375px에서 가로 스크롤 금지
6. **폰트 계층**: h1 **≥2.5rem**, h2 **≥2rem**, h3 **≥1.5rem**, body **=1rem**. 계층 미준수 시 시각적 위계 붕괴
7. **단일 HTML 완결**: 외부 CSS/JS 파일 금지(CDN은 허용). 오프라인에서 열어도 레이아웃이 유지되어야 함

## 권장 품질 기준 (SHOULD)
충족하면 품질 향상, 미충족 시 🟡 warning:

1. **라이트 테마 최적화**: 기본 테마가 라이트이고, 라이트 모드에서 시각적 완성도가 높아야 함
2. **시각적 절제**: 떠다니는 그라디언트 오브, 무지개 테두리, 그라디언트 텍스트, scale transform hover 금지
3. **KPI 컬러 시맨틱**: accent 컬러는 KPI 그리드 **최대 2개**에만. 숫자에 랜덤 컬러 금지
4. **타입별 필수 인터랙션 포함**: 대시보드=필터 툴바, 보고서=접기 섹션, 캐러셀=스와이프+키보드, 슬라이드=네비게이션
5. **인쇄 대응**: `@media print` 스타일 정의, 인쇄 시 불필요한 UI 숨김

## 폰트 규칙
- **Primary**: Pretendard (CDN: `https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/static/pretendard.min.css`)
- **Fallback**: Noto Sans KR (CDN: `https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;600;700&display=swap`)
- **코드 폰트**: JetBrains Mono / `'SF Mono', 'Fira Code', 'Consolas', monospace`
- font-family 선언: `'Pretendard', 'Noto Sans KR', -apple-system, sans-serif`
- Pretendard/Noto Sans KR 외 본문 폰트 사용 금지

## 안티패턴
이렇게 하면 안 됨:

1. **`:root`만 사용하는 테마** — 클래스 기반(`theme-light`/`theme-dark`)만 허용. `data-theme`이나 `@media (prefers-color-scheme)` 금지
2. **KPI 그리드 전체 accent 컬러** — 4개 이상 KPI 카드에 전부 accent 색상 넣으면 시각적 과부하. **최대 2개**만
3. **`let`/`const` 사용** — 최상위 변수는 반드시 `var` 사용. html-to-image 캡처 시 스코프 문제 방지
4. **resetCanvas 패턴** — 캔버스 DOM을 교체하는 방식 금지. `.destroy()` 후 같은 캔버스에 새 차트 생성
5. **리서치 없이 더미 데이터** — 사용자가 데이터를 직접 제공하지 않았는데 임의 수치로 채우면 신뢰성 훼손
6. **Pretendard/Noto Sans KR 외 폰트 사용** — 브랜드 일관성을 위해 다른 폰트 금지 (코드 폰트 예외)
