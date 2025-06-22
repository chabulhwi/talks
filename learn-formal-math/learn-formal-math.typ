#import "@preview/touying:0.6.1": *
#import themes.dewdrop: *
#import "@preview/numbly:0.1.0": numbly

#set text(lang: "ko", font: "Noto Sans CJK KR")
#set heading(numbering: numbly("{1}.", default: "1.1"))

#show: dewdrop-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.author,
  navigation: "mini-slides",
  config-info(
    title: [증명 보조기로 수학 배우기],
    subtitle: [대수학과 수리 논리학부터],
    author: [차불휘],
    date: datetime.today(),
    institution: [셈말길],
    outline: [개요],
  ),
)

#title-slide()

#outline-slide()

= 증명 보조기로 수학 배우기

== 활동 목표

1. 린(Lean)의 수학 라이브러리 매스리브(Mathlib)를 참고하면서 대수학과 수리
   논리학을 학습한다.
  - 학부 및 대학원 수학 교재 그리고 매스리브 밖의 린 라이브러리를 참고한다.
  - 매스리브를 이용해 몇몇 수학 교재의 연습 문제를 형식화한다.
2. 로크(Rocq)의 Coq-HoTT 라이브러리를 참고하면서 호모토피 유형론(HoTT)을
   학습한다.
  - 호모토피 유형론에 관한 여러 교재를 참고한다.
  - Coq-HoTT를 이용해 HoTT 교재의 연습 문제를 형식화한다.
3. 인식 논리와 그 활용 방안을 조사한다.
  - 이론 변화(믿음 수정)에 관한 논리학 전공 도서를 참고한다.

== 동기

1. 증명 보조기를 이용하면서 수학 이론을 학습하는 일이 가능한지 확인하고 싶다.
  - 증명 보조기로 수학을 형식화하는 수학자들은 이미 많은 수학 이론을 알고 있다.
  - 나는 린의 이용법을 배웠지만, 학부 및 대학원 수학을 제대로 배운 적이 거의 없다.
  - 매스리브에서는 대수학, 위상 수학, 해석학의 순서로 이론이 전개된다.
2. 내가 만들려는 수학 교육용 게임의 맨 첫 부분이 논리학을 다룰 것이다.
  - 고전 및 직관주의 일차 논리의 모형론과 증명론을 배워야 한다.
  - 시간이 남는다면 다른 비고전 논리도 배우려고 한다.
  - 나중에 고대 그리스·인도·중국 논리학을 조사해야 한다.

---

3. 로크는 나중에 소프트웨어 검증에 활용할 수 있다.
  - 소프트웨어 기초론 교재들을 읽으려면 로크를 다룰 줄 알아야 한다.
4. 증명 보조기의 작동 원리를 이해하려면 유형론을 배워야 한다.
  - 나중에 린의 유형론을 자세히 조사할 계획이다.
5. 인식 논리를 배우려는 이유
  - 내가 만들려는 수학 교육용 게임은 학습자에게 증명 보조기의 이용법과 형식
    논리학 이론을 동시에 가르쳐야 한다.
  - 그런 교육 방법을 찾는 데 인식 논리가 유용할까?

== 주요 교재

1. 추상 대수학
  - #link("https://judsonbooks.org/aata/")[
      "Abstract Algebra: Theory and Applications" by Thomas W. Judson
    ]
  - #link("https://store.doverpublications.com/collections/math-algebra/products/9780486439471")[
      "Algebra" by Larry C. Grove
    ]
  - #link("https://bookstore.ams.org/gsm-104/")[
      "Algebra: Chapter 0" by Paolo Aluffi
    ]

2. 수리 논리학
  - #link("https://openlogicproject.org/")[
      "The Open Logic Text" by the Open Logic Project
    ]
  - #link("https://doi.org/10.1017/9781108778756")[
      "Mathematical Logic and Computation" by Jeremy Avigad
    ]

= 수능 수학 문제 형식화하기

== 활동 목표와 동기

1. 활동 목표
  - 매스리브를 활용해 수능 수학 문제의 진술과 풀이를 형식화한다.
  - 평가원의 허락을 받아, 형식화된 수능 수학 문제의 풀이를 인공 지능 기업에 판다.
2. 동기
  - 나도 돈을 벌어야 한다!
  - 증명 보조기의 인지도를 높여 이용자층을 늘리고 싶다.
  - 수능 수학 문제를 알아서 푸는 인공 지능 모형을 만드는 데 이바지하고 싶다.

---

3. 어려운 점
  - 고등학교 수준까지의 수학을 대학원 수준의 이론으로 다시 서술해야 한다.
  - 어떤 수학 내용은 그래프나 도형으로 시각화해야 이해하기 좋다.
4. 그 밖의 도전
  - 형식화된 수학 증명을 자연어 증명으로 변환하는 프로그램을 만들자.
  - 수능 수학 문제의 풀이를 증명 보조기로 작성할 수 있는 인공 지능 모형을 만들자.
