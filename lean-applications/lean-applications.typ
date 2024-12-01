#import "@preview/touying:0.5.3": *
#import themes.dewdrop: *
#import "@preview/numbly:0.1.0": numbly

#set text(font: "Noto Sans CJK KR")
#set heading(numbering: numbly("{1}.", default: "1.1"))

#show: dewdrop-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.author,
  navigation: "mini-slides",
  config-info(
    title: [린 정리 증명기의 소개 및 활용],
    subtitle: [증명 보조기, 수학 AI 그리고 소프트웨어 검증],
    author: [차불휘],
    date: datetime.today(),
    institution: [린 커뮤니티],
    outline: [개요],
  ),
)

#title-slide()

#outline-slide()

= 상호 작용 정리 증명기

== 상호 작용 정리 증명기란?

- 형식 증명: 컴퓨터 프로그램이 검사할 수 있는 방식으로 구성된 증명.
- 증명 검사기: 형식 증명을 검사하는 컴퓨터 프로그램.
- 상호 작용 정리 증명기
  - 사람이 형식 증명을 작성하도록 돕는 컴퓨터 프로그램.
  - 보통 증명 검사기의 역할도 겸함. *증명 보조기*라고도 함.
- 대표적인 증명 보조기: *린(Lean)*, 코크(Coq), 아그다(Agda), 이저벨(Isabelle)
  등.

#figure(
  image("lean-paperproof.png", height: auto),
  caption: [린으로 작성한 증명의 보기.],
) <lean-proof-example>

== 증명 보조기의 활용

- 프로그램 검증: 컴퓨터 프로그램이 그 명세에 맞게 동작함을 증명하기.
  - 기능 정확성: 프로그램이 입력값마다 명세에 맞는 출력값을 산출하는 성질.
  - 보안 성질: 프로그램이 특정 비밀을 절대로 유출하지 않는 성질.
  - 그 밖의 성질: 자원 이용의 한계에 관한 성질 등.
- 수학 인공 지능의 개발: 수학 정리의 형식 증명을 생성하는 언어 모형 만들기.
- 학술 이론의 형식화: 수학·컴퓨터 과학·물리학·철학 이론을 재서술하고 검증하기.

= 린 정리 증명기의 활용

== 린의 활용 사례: 구글 딥마인드의 알파푸르프

- 알파푸르프(AlphaProof): 형식 수학 추리를 위한 강화 학습 기반 시스템
  - 린의 언어로 수학 진술을 증명하도록 자기 자신을 훈련함.
  - 사전 훈련된 언어 모형과 알파제로(AlphaZero) 강화 학습 알고리듬을 결합함.
  - 제미니(Gemini) 모형을 미세하게 조정해 자연 언어로 쓰인 문제 진술을 형식
    진술로 번역함.
  - 이로써 다양한 난이도의 대규모 형식 문제 라이브러리를 만듦.
- 참고 자료
  - 구글 딥마인드 블로그:
    https://deepmind.google/discover/blog/ai-solves-imo-problems-at-silver-medal-level/

#figure(
  image("alphaproof-imo-2024-p6.png", height: auto),
  caption: [알파푸르프가 생성한 수학 증명.],
) <alphaproof-imo-2024-p6>

== 린의 활용 사례: 시더

- 시더(Cedar): 아마존 웹 서비스(AWS)에서 2023년 5월 10일에 발표한 인가 정책
  언어.
  - 시더 개발진이 시더의 형식 모형을 린으로 작성함.
  - 시더의 컴포넌트들이 핵심적인 안전 및 보안 속성을 지님을 증명함.
  - 러스트로 구현한 시더가 그 형식 모형과 일치함을 차등 무작위 시험으로 확인함.
- 참고 자료
  - AWS 오픈 소스 블로그:
    https://aws.amazon.com/blogs/opensource/lean-into-verified-software-development/
  - 아카이브 논문: https://doi.org/10.48550/arXiv.2407.01688

= 증명 지향 프로그래밍

== 증명 지향 프로그래밍이란?

- 증명 지향 프로그래밍: 개발자가 프로그램과 증명을 함께 설계해 프로그램 동작의
  여러 측면을 수학적으로 보장하는 패러다임.
- 증명 지향 프로그래밍 언어: *F\**, *다프니(Dafny)* 등.
  - F\*: 이용자가 정의한 부작용을 지원하는 의존형 프로그래밍 언어 겸 증명
    보조기.
  - 다프니: C\#, 자바, 자바스크립트, 고(Go), 파이선 등의 언어로 컴파일이 되는
    명령형 프로그래밍 언어.

== 다프니의 활용: 스마트 계약의 연역적 검증에 관한 논문
- 스마트 계약과 그 명세 및 구현을 다프니 언어로 작성해 검증할 수 있음.
- 임의 재진입성은 스마트 계약에서 발생하는 버그와 공격의 주요 근원임.
- 본 논문의 저자들은 임의 재진입성에 대한 추리 방법을 제안함.
- 저자들이 작성한 다프니 코드는 설리디티 등의 언어로 작성한 스마트 계약으로 옮길
  수 있음.
- 설리디티(Solidity): 이더리움(이시리엄) 탈중앙화 블록체인에서 작동하는 스마트
  계약을 개발하기 위한 정적 유형 프로그래밍 언어.
- 참고 자료
  - 논문: https://doi.org/10.1007/s10009-024-00738-1
  - 깃허브 저장소: https://github.com/ConsenSys/dafny-sc-fmics

#figure(
  image("dafny-account.png", height: auto),
  caption: [다프니로 작성한 자료형과 계정 특성.],
) <dafny-account>

== F\*의 활용: 프로젝트 에베레스트
- 마이크로소프트 연구소, 카네기 멜런 대학, INRIA, MSR-INRIA 협력 센터를 포함한
  여러 기관의 연구원과 엔지니어가 힘을 모음.
- 이들은 F\* 증명 보조기를 활용해, 2016년부터 HTTPS 생태계의 여러 구성 요소를
  형식적으로 검증함.
- 에베레스트 소프트웨어는 리눅스 커널, 윈도 커널, 마이크로소프트 애저(Azure),
  모질라 파이어폭스 등의 여러 시스템에 배치됨.
- TLS-1.3 레코드 계층과 그 암호 알고리듬의 참조 구현물을 구축하고 검증함.
- QUIC, 시그널(Signal), DICE 같은 새로운 보안 프로토콜의 검증된 구현물을 만듦.
