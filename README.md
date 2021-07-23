# KNUniverse
KNUniverse는 경북대학교 메타버스 플랫폼이다.

# 1. 목적 및 영향
메타버스란, 초월을 의미하는 '메타(Meta)'와 세계를 뜻하는 '유니버스(Universe)'의 합성어이다.
디지털로 만든 가상 세계 안에서 게임 아바타를 이용해 접속하여 대학 생활을 즐기는 방식의 플랫폼을 뜻한다.
시장조사업체 스트래티지애널리틱스(SA)는 메타버스 시장이 현재 460억 달러에서 2025년에 2800억 달러까지 성장할 것으로 전망했을 만큼 미래산업에 중요한 가치를 지니고 있다.
  

포스트 코로나 시대에 우리는 학교에 자유롭게 가지 못하고 비대면 수업과 온라인 축제 등을 진행하였다.  
특히 신입생들은 대학 생활을 즐길 수 없었고, 선후배 동기들의 교류가 적어 많은 아쉬움을 표현했다.
  

학생들의 교류와 소통할 수 있는 방안이 부족한 상황이고, 영상을 통해 비대면 수업을 듣고 있다.  
실제 코로나로 인해 학교에 등교하지 않고 비대면 수업을 수강하여 학교에 대한 기대와 소속감이 저하되어 반수를 도전하는 신입생이 늘었다는 기사를 쉽게 찾을 수 있다.

메타버스를 통해 같은 게임 공간에서 만나게 되다면 함께 존재한다는 느낌, 함께 뭉쳐 있음을 느낄 수 있는 하는 사회적인 유대감이 올라가 단순히 게임이 목적이 아닌, 학생들끼리 만나 대화를 나누고 친목을 도모할 수 있다.

  
실제 순천향대학교에서는 메타버스를 이용한 입학식을 진행하였고, 건국대학교에서는 축제를, 강원대학교 등 많은 대학교에서 메타버스를 통한 행사를 진행한 결과 반응이 좋았다고 한다.


이러한 바탕으로 우리는 경북대학교만의 메타버스의 유용성과 필요성을 느껴 KNUniverse를 제작하였다.
  

교내를 모두 모델링하여 구현한다면 수업, 축제, 예술제, 입시설명회, 입학식, 그리고 동아리 가두모집과 같은 다양한 행사를 코로나 시대에 맞게 비대면으로 진행하여 안전하고 참여도 높은 결과를 기대할 수 있다.


# 2. 개발 환경
회원가입 서버에 아파치 톰캣과 JSP, 로그인 기능을 담당하는 restAPI 서버는 nodejs로 작성하였다.
건물 모델링은 블렌더3D 툴을 이용하여 제작하였고 클라이언트는 언리얼 엔진을 이용하였다.


# 3. 구현 내용
![image](https://user-images.githubusercontent.com/33932392/126698620-622ddb97-3894-4bf1-bf2e-b9a7b72b8495.png)

회원가입을 할 수 있는 웹페이지를 구현하였고 웹페이지에서 등록한 정보는 MySQL에 저장된다.
언리얼 엔진4로 구현한 프로그램 내에서 로그인을 하여 접속할 수 있고, 다양한 사람들과 대화를 나눌 수 있다.

건물은 IT2, 4, 5호관과 공과대학 9호관을 구현하였다.

모델링과 머테리얼 등 컨텐츠 파일은 용량이 커 깃헙에 올릴 수 없기에 구글 드라이브 링크를 통해 받을 수 있다.
Content 폴더를 구글 드라이브에서 다운받고 KNUniverse.uproject과 같은 폴더에 넣어 빌드할 수 있다.

Content 폴더 링크: https://drive.google.com/drive/folders/1BRnaMirgBXk2C3yeEXpQyAY3pY5nRc-i?usp=sharing

# 4. 실행 방법
https://github.com/squareyun/sw_hackathon_21/releases 에 있는 압축파일을 풀고, 명령 프롬프트를 이용하여 프로그램을 실행하여야 한다.


```KNUniverse.exe KNU?Listen -game``` 명령어를 입력하면 게임의 서버를 실행할 수 있다. 서버는 일반적인 클라이언트와 비슷하게 동작하는데, 로그인 과정이 없고 대화 기능을 사용할 수 없다.  

```KNUniverse.exe 서버주소 -game``` 을 입력하여 클라이언트를 실행할 수 있다.  
로컬에서 실행하기 위해서는 ```KNUniverse.exe 127.0.0.1 -game``` 을 입력하여 실행한다.

회원가입 버튼을 눌러 가입을 진행하고, 회원 등록한 아이디와 패스워드를 입력하고 로그인 버튼을 눌러 접속한다.  

게임 화면에서 채팅창을 이용해 접속한 사람들과의 전체 대화가 가능하다. TAB key를 눌러 채팅창에 포커스를 맞출 수 있고 빈 채팅창에 ENTER key를 한 번 누르면 움직일 수 있다.

# 5. 시연 영상

# 6. 향후 계획
- 공과대학 9호관 구현에 가장 많은 시간을 투자했는데, 지금 구현하지 못한 건물들까지 포함하여 학교 전체를 공과대학 9호관과 비슷한 퀄리티로 구현할 계획이다.
- 전체 대화 기능 뿐만 아니라 원하는 사람과만 대화할 수 있는 기능도 추가할 계획이다.
- 앞서 말한 다양한 행사와 사용자들이 참여할 수 있는 이벤트 등을 추가할 계획이다.  
- 사용자의 접근성을 높일 수 있도록 크로스 플랫폼을 지원하여 하드웨어의 경계 없이 이용할 수 있도록 보완할 계획이다.

# 7. 팀원
- 권은구 - 컴퓨터학부 2017110569
- 이준배 - 컴퓨터학부 2017115298
- 윤우혁 - 컴퓨터학부 2017114051
- 임정민 - 컴퓨터학부 2017116186
